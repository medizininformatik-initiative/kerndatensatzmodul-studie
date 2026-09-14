# mii-exa-studie-practitioner-organization - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-practitioner-organization**

## Beispiel Organization: mii-exa-studie-practitioner-organization

-------

**German**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**name**: Example Organization for Practitioner



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "mii-exa-studie-practitioner-organization",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "name" : "Example Organization for Practitioner"
}

```
