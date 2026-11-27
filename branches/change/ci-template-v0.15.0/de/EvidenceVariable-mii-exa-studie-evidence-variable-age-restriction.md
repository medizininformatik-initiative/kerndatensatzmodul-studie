# mii-exa-studie-evidence-variable-age-restriction - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-evidence-variable-age-restriction**

## Beispiel EvidenceVariable: mii-exa-studie-evidence-variable-age-restriction

| |
| :--- |
| Active Stand: 2026-11-27 |

-------

**German**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**url**: [EvidenceVariable: extension = ,; url = https://www.medizininformatik-initiative.de/fhir/modul-studie/EvidenceVariable/mii-exa-studie-evidence-variable-age-restriction; version = 2027.0.0-ballot; status = active; date = 2026-11-27 14:12:12+0000; publisher = NUM-DIZ; contact = NUM-DIZ (https://www.netzwerk-universitaetsmedizin.de)](EvidenceVariable-mii-exa-studie-evidence-variable-age-restriction.md)

**version**: 2027.0.0-ballot

**status**: Active

**date**: 2026-11-27 14:12:12+0000

**publisher**: NUM-DIZ

**contact**: NUM-DIZ: [https://www.netzwerk-universitaetsmedizin.de](https://www.netzwerk-universitaetsmedizin.de)

> **characteristic****description**: Höchstalter**definition**: kein Höchstalter**exclude**: false

> **characteristic****description**: Mindestalter**definition**: 18 Jahre**exclude**: false



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-studie-evidence-variable-age-restriction",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/EvidenceVariable/mii-exa-studie-evidence-variable-age-restriction",
  "version" : "2027.0.0-ballot",
  "status" : "active",
  "date" : "2026-11-27T14:12:12+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "characteristic" : [{
    "description" : "Höchstalter",
    "definitionCodeableConcept" : {
      "text" : "kein Höchstalter"
    },
    "exclude" : false
  },
  {
    "description" : "Mindestalter",
    "definitionCodeableConcept" : {
      "text" : "18 Jahre"
    },
    "exclude" : false
  }]
}

```
