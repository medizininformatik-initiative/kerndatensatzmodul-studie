# Example Reference Study - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Reference Study**

## Example ResearchStudy: Example Reference Study

-------

**English**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**title**: Example Reference Study

**status**: Completed



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-studie-reference-study",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "title" : "Example Reference Study",
  "status" : "completed"
}

```
