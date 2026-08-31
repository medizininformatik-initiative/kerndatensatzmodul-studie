# ResearchStudy-rekrutierungsstand-datum - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ResearchStudy-rekrutierungsstand-datum**

## SearchParameter: ResearchStudy-rekrutierungsstand-datum 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand-datum | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:SP_MII_Studie_RekrutierungsstandDatum |

 
Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ResearchStudy-rekrutierungsstand-datum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-rekrutierungsstand-datum",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_RekrutierungsstandDatum",
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
  "description" : "Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "rekrutierungsstand-datum",
  "base" : ["ResearchStudy"],
  "type" : "date",
  "expression" : "ResearchStudy.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung').extension.where(url='rekrutierungsstand-datum').value"
}

```
