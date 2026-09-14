# mii-exa-studie-author - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-author**

## Example Organization: mii-exa-studie-author

-------

**English**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**name**: Example Organization for Author



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "mii-exa-studie-author",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "name" : "Example Organization for Author"
}

```
