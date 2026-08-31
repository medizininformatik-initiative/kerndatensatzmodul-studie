# ResearchStudy-finanzierung - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResearchStudy-finanzierung**

## SearchParameter: ResearchStudy-finanzierung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-finanzierung | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Finanzierung |

 
Suchparameter für ResearchStudy.extension:Finanzierung 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-finanzierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-finanzierung",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Finanzierung",
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
  "description" : "Suchparameter für ResearchStudy.extension:Finanzierung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "finanzierung",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung').value"
}

```
