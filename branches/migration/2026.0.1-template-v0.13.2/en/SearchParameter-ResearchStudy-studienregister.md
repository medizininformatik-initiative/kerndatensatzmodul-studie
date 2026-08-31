# ResearchStudy-studienregister - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResearchStudy-studienregister**

## SearchParameter: ResearchStudy-studienregister 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-studienregister | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Studienregister |

 
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
  "date" : "2026-08-31T20:08:31+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für ResearchStudy.extension:Studienregister",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "studienregister",
  "base" : ["ResearchStudy"],
  "type" : "reference",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister').value"
}

```
