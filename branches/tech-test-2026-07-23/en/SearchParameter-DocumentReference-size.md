# DocumentReference-size - v2026.0.1

## SearchParameter: DocumentReference-size 

 
Suchparameter für DocumentReference.content.attachment.size 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-size",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-size",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Size",
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
  "description" : "Suchparameter für DocumentReference.content.attachment.size",
  "code" : "size",
  "base" : ["DocumentReference"],
  "type" : "number",
  "expression" : "DocumentReference.content.attachment.size"
}

```
