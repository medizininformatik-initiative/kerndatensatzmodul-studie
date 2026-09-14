# mii-exa-studie-custodian - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-custodian**

## Beispiel Organization: mii-exa-studie-custodian

-------

**German**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**name**: Example Organization for Custodian



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "mii-exa-studie-custodian",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "name" : "Example Organization for Custodian"
}

```
