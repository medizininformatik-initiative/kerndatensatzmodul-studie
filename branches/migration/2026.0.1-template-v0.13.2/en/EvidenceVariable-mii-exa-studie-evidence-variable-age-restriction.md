# mii-exa-studie-evidence-variable-age-restriction - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-evidence-variable-age-restriction**

## Example EvidenceVariable: mii-exa-studie-evidence-variable-age-restriction

-------

**English**

-------

**status**: Active

> **characteristic****description**: Höchstalter**definition**: kein Höchstalter**exclude**: false

> **characteristic****description**: Mindestalter**definition**: 18 Jahre**exclude**: false



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-studie-evidence-variable-age-restriction",
  "status" : "active",
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
