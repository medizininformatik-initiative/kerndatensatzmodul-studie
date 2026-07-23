# ResearchStudy-rekrutierungsziel - v2026.0.1

## SearchParameter: ResearchStudy-rekrutierungsziel 

 
Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-rekrutierungsziel",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsziel",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Rekrutierungsziel",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel",
  "code" : "rekrutierungsziel",
  "base" : ["ResearchStudy"],
  "type" : "number",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsziel').value"
}

```
