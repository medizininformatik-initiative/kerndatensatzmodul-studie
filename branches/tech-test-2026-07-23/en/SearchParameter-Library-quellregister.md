# Library-quellregister - v2026.0.1

## SearchParameter: Library-quellregister 

 
Suchparameter für Library.extension:QuellRegister 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "Library-quellregister",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-quellregister",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Quellregister",
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
  "description" : "Suchparameter für Library.extension:QuellRegister",
  "code" : "quellregister",
  "base" : ["Library"],
  "type" : "token",
  "expression" : "Library.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register').value"
}

```
