# ResearchStudy-rekrutierungsstand - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ResearchStudy-rekrutierungsstand**

## SearchParameter: ResearchStudy-rekrutierungsstand 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_Rekrutierungsstand |

 
Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-rekrutierungsstand",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_Rekrutierungsstand",
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
  "description" : "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "rekrutierungsstand",
  "base" : ["ResearchStudy"],
  "type" : "number",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand').value"
}

```
