# DocumentReference-title - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference-title**

## SearchParameter: DocumentReference-title 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-title | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Title |

 
Suchparameter für DocumentReference.content.attachment.title 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-title",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-title",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "SP_MII_Studie_Title",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T21:32:33+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für DocumentReference.content.attachment.title",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "title",
  "base" : ["DocumentReference"],
  "type" : "string",
  "expression" : "DocumentReference.content.attachment.title"
}

```
