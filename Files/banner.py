#!/usr/bin/env python3

import requests
import argparse
import re
import json
import sys
import os
from base64 import b64encode
import urllib3
from rich.console import Console
from rich.theme import Theme
from requests.packages.urllib3.exceptions import InsecureRequestWarning

requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
req = requests.Session()

http_proxy = ""
os.environ['HTTP_PROXY'] = http_proxy
os.environ['HTTPS_PROXY'] = http_proxy

custom_theme = Theme({
    "OK": "bright_green",
    "NOK": "red3"
})

def manageArgs():
    parser = argparse.ArgumentParser()
    parser.add_argument("url", help="URL")
    parser.add_argument("-p", dest='port', metavar='port', type=int, default=5000, help="port to use (default : 5000)")
    parser.add_argument('-A', dest='authentication', type=str, default="", help='Authentication')
    action = parser.add_mutually_exclusive_group()
    action.add_argument("--dump", metavar="DOCKERNAME", dest='dump', type=str,  help="DockerName")
    action.add_argument("--list", dest='list', action="store_true")
    action.add_argument("--dump_all", dest='dump_all', action="store_true")
    args = parser.parse_args()
    return args

def printList(dockerlist):
    for element in dockerlist:
        if element:
            console.print(f"[+] {element}", style="OK")
        else:
            console.print(f"[-] No Docker found", style="NOK")

def tryReq(url, authentication=None):
    try:
        if authentication:
            headers = {'Authorization': 'Bearer ' + authentication}
            r = req.get(url, verify=False, headers=headers)
            print(r)
            r.raise_for_status()
        else:
            r = req.get(url, verify=False)
            r.raise_for_status()
    except requests.exceptions.HTTPError as errh:
        console.print(f"Http Error: {errh}", style="NOK")
        sys.exit(1)
    except requests.exceptions.ConnectionError as errc:
        console.print(f"Error Connecting : {errc}", style="NOK")
        sys.exit(1)
    except requests.exceptions.Timeout as errt:
        console.print(f"Timeout Error : {errt}", style="NOK")
        sys.exit(1)
    except requests.exceptions.RequestException as err:
        console.print(f"Dunno what happend but something fucked up {err}", style="NOK")
        sys.exit(1)
    return r

def createDir(directoryName):
    if not os.path.exists(directoryName):
        os.makedirs(directoryName)

def downloadSha(url, port, docker, sha256, output_dir, authentication=None):
    createDir(output_dir)
    directory = os.path.join(output_dir, docker)

    for sha in sha256:
        filenamesha = f"{sha}.tar.gz"
        geturl = f"{url}:{str(port)}/v2/{docker}/blobs/sha256:{sha}"
        r = tryReq(geturl, authentication)

        if r.status_code == 200:
            console.print(f"    [+] Downloading : {sha}", style="OK")

            # Crear el directorio si no existe
            if not os.path.exists(directory):
                os.makedirs(directory)

            with open(os.path.join(directory, filenamesha), 'wb') as out:
                for bits in r.iter_content():
                    out.write(bits)

def getBlob(docker, url, port, authentication=None):
    tags = f"{url}:{str(port)}/v2/{docker}/tags/list"
    rr = tryReq(tags, authentication)
    data = rr.json()
    image = data["tags"][0]
    url = f"{url}:{str(port)}/v2/{docker}/manifests/"+image+""
    r = tryReq(url, authentication)
    blobSum = []

    if r.status_code == 200:
        regex = re.compile('blobSum')
        for aa in r.text.splitlines():
            match = regex.search(aa)
            if match:
                blobSum.append(aa)

        if not blobSum:
            console.print(f"[-] No blobSum found", style="NOK")
            sys.exit(1)
        else:
            sha256 = []
            cpt = 1
            for sha in blobSum:
                console.print(f"[+] BlobSum found {cpt}", end='\r', style="OK")
                cpt += 1
                a = re.split(':|,', sha)
                sha256.append(a[2].strip("\""))
            print()
            return sha256

def enumList(url, port, authentication=None, checklist=None):
    url = f"{url}:{str(port)}/v2/_catalog"
    try:
        r = tryReq(url, authentication)
        if r.status_code == 200:
            catalog2 = re.split(':|,|\n ', r.text)
            catalog3 = []

            for docker in catalog2:
                dockername = docker.strip("[\'\"\n]}{")
                catalog3.append(dockername)

            printList(catalog3[1:])
            return catalog3
    except:
        exit()

def dump(args, output_dir):
    sha256 = getBlob(args.dump, args.url, args.port, args.authentication)
    console.print(f"[+] Dumping {args.dump}", style="OK")
    downloadSha(args.url, args.port, args.dump, sha256, output_dir, args.authentication)

def dumpAll(args, output_dir):
    dockerlist = ['repositories', 'hosting-app']

    for docker in dockerlist[1:]:
        sha256 = getBlob(docker, args.url, args.port, args.authentication)
        console.print(f"[+] Dumping {docker}", style="OK")

        # Crear el directorio si no existe
        directory = os.path.join(output_dir, docker)
        if not os.path.exists(directory):
            os.makedirs(directory)

        downloadSha(args.url, args.port, docker, sha256, output_dir, args.authentication)

def options():
    args = manageArgs()
    if args.list:
        enumList(args.url, args.port, args.authentication)
    elif args.dump_all:
        # Especificar manualmente el directorio de salida
        output_dir = "/ruta/completa/a/mi/directorio"
        dumpAll(args, output_dir)
    elif args.dump:
        # Especificar manualmente el directorio de salida
        output_dir = "/ruta/completa/a/mi/directorio"
        dump(args, output_dir)

if __name__ == '__main__':
    print(f"[+]======================================================[+]")
    print(f"[|]    Docker Registry Grabber v1       @SyzikSecu       [|]")
    print(f"[+]======================================================[+]")
    print()
    urllib3.disable_warnings()
    console = Console(theme=custom_theme)
    options()
