# ResearchStudy-armName - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResearchStudy-armName**

## SearchParameter: ResearchStudy-armName 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-armName | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_ArmName |

 
Suchparameter für ResearchStudy.arm.name 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-armName",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-armName",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_ArmName",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T20:08:31+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für ResearchStudy.arm.name",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "armName",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.arm.name"
}

```
