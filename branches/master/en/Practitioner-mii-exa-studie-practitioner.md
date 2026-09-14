# mii-exa-studie-practitioner - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-practitioner**

## Example Practitioner: mii-exa-studie-practitioner

-------

**English**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**name**: Max Mustermann 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "mii-exa-studie-practitioner",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Max"]
  }]
}

```
