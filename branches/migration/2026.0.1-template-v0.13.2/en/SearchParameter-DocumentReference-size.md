# DocumentReference-size - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference-size**

## SearchParameter: DocumentReference-size 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-size | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Size |

 
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
  "date" : "2026-08-31T20:03:51+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für DocumentReference.content.attachment.size",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "size",
  "base" : ["DocumentReference"],
  "type" : "number",
  "expression" : "DocumentReference.content.attachment.size"
}

```
