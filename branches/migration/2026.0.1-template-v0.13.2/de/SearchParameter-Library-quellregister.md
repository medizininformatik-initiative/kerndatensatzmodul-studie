# Library-quellregister - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Library-quellregister**

## SearchParameter: Library-quellregister 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-quellregister | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_Quellregister |

 
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
  "date" : "2026-08-31T20:20:31+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für Library.extension:QuellRegister",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "quellregister",
  "base" : ["Library"],
  "type" : "token",
  "expression" : "Library.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register').value"
}

```
