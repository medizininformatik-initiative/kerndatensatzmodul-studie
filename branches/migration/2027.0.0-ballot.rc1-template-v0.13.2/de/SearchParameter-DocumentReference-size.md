# DocumentReference-size - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DocumentReference-size**

## SearchParameter: DocumentReference-size 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-size | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_Size |

 
Suchparameter für DocumentReference.content.attachment.size 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-size",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-size",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "SP_MII_Studie_Size",
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
