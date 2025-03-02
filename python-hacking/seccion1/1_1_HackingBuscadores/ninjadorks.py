
from dotenv import load_dotenv, set_key
from results_parser import ResultsParser
from file_downloader import FileDownloader
import os
from googlesearch import GoogleSearch
import argparse
import sys


def env_config():
    """Configurar el archivo .env con los valores proporcionados"""
    api_key = input("Introduce tu API KEY: ")
    engine_id = input("Introduce tu ID del buscador personalizado: ")
    set_key(".env", "API_KEY_GOOGLE", api_key)
    set_key(".env", "SEARCH_NINJA_ID", engine_id)
    

def main(query, configure_env, start_page, pages, lang, output_json, output_html, download):
    
    # Comprobamos si existe el fichero .env
    env_exists = os.path.exists(".env")
    
    if not env_exists or configure_env:
        env_config()
        print("Archivo .env configurado correctamente.")
        sys.exit(1)
        
    
    # Cargamos las varibales de entorno
    load_dotenv()

    # Leemos la clave API

    API_KEY_GOOGLE = os.getenv("API_KEY_GOOGLE")

    #Leemos el identificador

    SEARCH_NINJA_ID = os.getenv("SEARCH_NINJA_ID")
    
    if not query:
        print("Debes especificar una busqueda con -q. Utiliza -h para obtner ayuda.")
        sys.exit(1)


    gsearch = GoogleSearch(API_KEY_GOOGLE, SEARCH_NINJA_ID)

    resultados = gsearch.search(query,
                             pages=pages,
                             start_page=start_page,
                             lang=lang)

    rparser = ResultsParser(resultados)
    
    # Mostrar los resultados en linea de comandos
    rparser.exportar_consola()
    
    if output_html:
        rparser.exportar_html(output_html)
    
    if output_json:
        rparser.exportar_json(output_json)
        
    if download:
        
        file_types = download.split(",")
        urls = [result['link'] for result in resultados]
        fdownloader = FileDownloader("Descargas")
        fdownloader.filtrar_descargar_archivos(urls, file_types)

if __name__ == "__main__":
    
    #Configuracion de los argumentos del programa.
    parser = argparse.ArgumentParser(description="Porgrama para realizar hacking con buscadores")
    parser.add_argument("-q", "--query", type=str,
                        help="Especifica la busqueda que deseas realizar.\nEjemplo: -q 'ANYTHING' ")
    parser.add_argument("-c", "--configure", action="store_true",
                        help="Inicia el proceso de configuracion del archivo .env\nUtiliza esta opcion sin args adiciconales")
    parser.add_argument("--start-page", type=int, default=1,
                        help="Especifica la pagina desde la que se comenzara a buscar")
    parser.add_argument("--pages", type=int, default=1,
                        help="Numero de paginas de la busqueda")
    parser.add_argument("--lang", type=str, default="lang_es",
                        help="Especifica el idioma por defecto de la busqueda")
    parser.add_argument("--json", type=str,
                        help="Exporta los resultados a un fichero JSON")
    parser.add_argument("--html", type=str,
                        help="Exporta los resultados a un fichero HTML")
    parser.add_argument("--download", type=str, default="all",
                        help="Descargar los resultados a un fichero")
    
    
    args = parser.parse_args()

    main(query=args.query,
         configure_env=args.configure,
         start_page=args.start_page,
         pages=args.pages,
         lang=args.lang,
         output_json=args.json,
         output_html=args.html,
         download=args.download)

    
    

 
