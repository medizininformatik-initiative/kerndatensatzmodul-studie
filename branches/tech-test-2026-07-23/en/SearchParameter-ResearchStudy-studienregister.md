# ResearchStudy-studienregister - v2026.0.1

## SearchParameter: ResearchStudy-studienregister 

 
Suchparameter für ResearchStudy.extension:Studienregister 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-studienregister",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-studienregister",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Studienregister",
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
  "description" : "Suchparameter für ResearchStudy.extension:Studienregister",
  "code" : "studienregister",
  "base" : ["ResearchStudy"],
  "type" : "reference",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister').value"
}

```
