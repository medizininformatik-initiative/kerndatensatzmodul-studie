# ResearchStudy-rekrutierungsstart - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResearchStudy-rekrutierungsstart**

## SearchParameter: ResearchStudy-rekrutierungsstart 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstart | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_Rekrutierungsstart |

 
Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-rekrutierungsstart",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstart",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Rekrutierungsstart",
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
  "description" : "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "rekrutierungsstart",
  "base" : ["ResearchStudy"],
  "type" : "date",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstart').value"
}

```
