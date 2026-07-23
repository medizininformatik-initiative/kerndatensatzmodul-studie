# ResearchStudy-finanzierung - v2026.0.1

## SearchParameter: ResearchStudy-finanzierung 

 
Suchparameter für ResearchStudy.extension:Finanzierung 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-finanzierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-finanzierung",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Finanzierung",
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
  "description" : "Suchparameter für ResearchStudy.extension:Finanzierung",
  "code" : "finanzierung",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung').value"
}

```
