# ResearchStudy-akronym - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResearchStudy-akronym**

## SearchParameter: ResearchStudy-akronym 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-akronym | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Akronym |

 
Suchparameter für ResearchStudy.extension:Akronym 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-akronym",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-akronym",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Akronym",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T19:54:32+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für ResearchStudy.extension:Akronym",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "akronym",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym').value"
}

```
