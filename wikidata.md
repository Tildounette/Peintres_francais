###cherche tous les peintres 

SELECT ?person ?labelPerson 
WHERE
{
   ?person wdt:P106 wd:Q1028181.
  ?person rdfs:label ?labelPerson
  FILTER(LANG(?labelPerson)='en')       
}

###compte le nombre peintres né entre 1780 et 1860

SELECT (COUNT(*) as ?eff)
WHERE
    {
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
SELECT ?item ?year (group_concat(?iso_lang ; separator = ',') as ?langs) (max(?itemLabel) as ?maxLabel)
WHERE
    { 
       { SELECT DISTINCT ?item ?year
        WHERE {
        ?item wdt:P31 wd:Q5; 
              wdt:P569 ?birthDate.
        BIND(REPLACE(str(?birthDate), "(.*)([0-9]{4})(.*)", "$2") AS ?year)
        FILTER(xsd:integer(?year) > 1780 && xsd:integer(?year) < 1850)# Any instance of a human.
            {?item wdt:P106 wd:Q1028181}
        MINUS {?item rdfs:label ?itemLabel.
            FILTER(LANG(?itemLabel) = 'fr')
            }
            }
        }  
  
        ?item rdfs:label ?itemLabel. 
		BIND(LANG(?itemLabel) as ?iso_lang)
  
       }
	   GROUP BY ?item ?year
	   ORDER BY ?item
	   LIMIT 100        {
        SELECT DISTINCT ?item
        WHERE {
        ?item wdt:P31 wd:Q5; 
              wdt:P569 ?birthDate.
        BIND(REPLACE(str(?birthDate), "(.*)([0-9]{4})(.*)", "$2") AS ?year)
        FILTER(xsd:integer(?year) > 1780 && xsd:integer(?year) < 1860)# Any instance of a human.
            {?item wdt:P106 wd:Q1028181}
            }
        }  
    }  

###sort 100 peintres nés entre 1780 et 1850 

PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
SELECT ?item ?year (group_concat(?iso_lang ; separator = ',') as ?langs) (max(?itemLabel) as ?maxLabel)
WHERE
    { 
       { SELECT DISTINCT ?item ?year
        WHERE {
        ?item wdt:P31 wd:Q5; 
              wdt:P569 ?birthDate.
        BIND(REPLACE(str(?birthDate), "(.*)([0-9]{4})(.*)", "$2") AS ?year)
        FILTER(xsd:integer(?year) > 1780 && xsd:integer(?year) < 1850)# Any instance of a human.
            {?item wdt:P106 wd:Q1028181}
        MINUS {?item rdfs:label ?itemLabel.
            FILTER(LANG(?itemLabel) = 'fr')
            }
            }
        }  
  
        ?item rdfs:label ?itemLabel. 
		BIND(LANG(?itemLabel) as ?iso_lang)
  
       }
	   GROUP BY ?item ?year
	   ORDER BY ?item
	   LIMIT 100