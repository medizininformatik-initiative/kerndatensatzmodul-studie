# EvidenceVariable-characteristic-description - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EvidenceVariable-characteristic-description**

## SearchParameter: EvidenceVariable-characteristic-description 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/EvidenceVariable-characteristic-description | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:SP_MII_Studie_CharacteristicDescription |

 
Suchparameter für EvidenceVariable.characteristic.description 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "EvidenceVariable-characteristic-description",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/EvidenceVariable-characteristic-description",
  "version" : "2026.0.1",
  "name" : "SP_MII_Studie_CharacteristicDescription",
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
  "description" : "Suchparameter für EvidenceVariable.characteristic.description",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "characteristicDescription",
  "base" : ["EvidenceVariable"],
  "type" : "string",
  "expression" : "EvidenceVariable.characteristic.description"
}

```
