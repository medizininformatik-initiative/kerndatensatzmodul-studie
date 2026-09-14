# mii-exa-studie-proband - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-proband**

## Example ResearchSubject: mii-exa-studie-proband

-------

**English**

-------

Profile: [MII PR Studie Proband](StructureDefinition-mii-pr-studie-proband.md)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**identifier**: Anonymous identifier/321123456

**status**: Candidate

**period**: 2023-01-01 --> 2023-12-31

**study**: [ResearchStudy LIFE-Adult-Study](ResearchStudy-mii-exa-studie-cohort.md)

**individual**: [Jane Doe Female, DoB: 1980-11-12 ( Krankenversichertennummer (use: official, ))](Patient-mii-exa-studie-patient.md)

**consent**: [mii-exa-studie-consent](Consent-mii-exa-studie-consent.md)



## Resource Content

```json
{
  "resourceType" : "ResearchSubject",
  "id" : "mii-exa-studie-proband",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
    "value" : "321123456"
  }],
  "status" : "candidate",
  "period" : {
    "start" : "2023-01-01",
    "end" : "2023-12-31"
  },
  "study" : {
    "reference" : "ResearchStudy/mii-exa-studie-cohort"
  },
  "individual" : {
    "reference" : "Patient/mii-exa-studie-patient"
  },
  "consent" : {
    "reference" : "Consent/mii-exa-studie-consent"
  }
}

```
