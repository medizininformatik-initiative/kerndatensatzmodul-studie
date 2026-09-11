# mii-exa-studie-consent - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-consent**

## Example Consent: mii-exa-studie-consent

-------

**English**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

## Participants

* **Role**: Patient
  * **Details**: [Jane Doe Female, DoB: 1980-11-12 ( Krankenversichertennummer (use: official, ))](Patient-mii-exa-studie-patient.md)

This consent is made under the policy `urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791` .

The subject has given their consent.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "mii-exa-studie-consent",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "code" : "research"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59284-0"
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-studie-patient"
  },
  "policy" : [{
    "uri" : "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
  }]
}

```
