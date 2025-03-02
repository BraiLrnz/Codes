import requests



class GoogleSearch:
    
    def __init__(self, api_key, engine_id):
        """
        Inicializa una nueva instancia de google search.
        
        Esta clase permite realizar peticiones automatizadas a la api de google.

        Args:
            api_key (_str_): Api Key de google.
            engine_id (_str_): Identificador del motor de busqueda personalizado de google.
        
        """
        self.api_key = api_key
        self.engine_id = engine_id
    def search(self, query, start_page=1, pages=1, lang="lang_es"):
        
        """Realiza una busqueda en google utilizando su API."""
        final_results = []
        results_per_page = 10 # Google por lo general saca 10 resultados por pagina.
        
        for page in range(pages):
            #Calcualamos el resultado de comienzo de cada pagina.
            start_index = (start_page - 1) * results_per_page + 1 + (page * results_per_page)
            url = f"https://www.googleapis.com/customsearch/v1?key={self.api_key}&cx={self.engine_id}&q={query}&start{start_index}&lr{lang}"
            response = requests.get(url)
            if response.status_code == 200:
                data = response.json()
                results = data.get("items")
                cresults = self.custom_results(results)
                final_results.extend(cresults)
            else:
                print(f"Error al realizar la peticion a la API: {response.status_code}")
                break # Rompemos la iteracion actual
        return final_results
                
    def custom_results(self, results):
        """Filtra los resultados de la consulta"""
        custom_results = []
        for r in results:
            cresult = {}
            cresult["title"] = r.get("title")
            cresult["description"] = r.get("snippet")
            cresult["link"] = r.get("link")
            custom_results.append(cresult)
        return custom_results
        
    





