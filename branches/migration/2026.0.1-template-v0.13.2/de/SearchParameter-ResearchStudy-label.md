# ResearchStudy-label - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ResearchStudy-label**

## SearchParameter: ResearchStudy-label 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-label | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_Label |

 
Suchparameter für ResearchStudy.extension:label 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-label",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-label",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Label",
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
  "description" : "Suchparameter für ResearchStudy.extension:label",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "label",
  "base" : ["ResearchStudy"],
  "type" : "string",
  "expression" : "ResearchStudy.extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label').extension.where(url='value').value"
}

```
