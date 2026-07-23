# mii-exa-studie-studieneinschluss-anfrage - v2026.0.1

## Example ServiceRequest: mii-exa-studie-studieneinschluss-anfrage

Profile: [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md)

**status**: Draft

**intent**: Proposal

**category**: Clinical trial (procedure)

**code**: Referral to clinical trial (procedure)

**subject**: [Jane Doe Female, DoB: 1980-11-12 ( Krankenversichertennummer (use: official, ))](Patient-mii-exa-studie-patient.md)

**supportingInfo**: 

* [ResearchStudy LIFE-Adult-Study](ResearchStudy-mii-exa-studie-cohort.md)
* [ResearchSubject: identifier = Anonymous identifier; status = candidate; period = 2023-01-01 --> 2023-12-31](ResearchSubject-mii-exa-studie-proband.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-studie-studieneinschluss-anfrage",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-studie-patient"
  },
  "supportingInfo" : [{
    "reference" : "ResearchStudy/mii-exa-studie-cohort"
  },
  {
    "reference" : "ResearchSubject/mii-exa-studie-proband"
  }]
}

```
