# mii-exa-studie-dokument - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-dokument**

## Beispiel DocumentReference: mii-exa-studie-dokument

-------

**German**

-------

Profile: [MII PR Studie Dokument](StructureDefinition-mii-pr-studie-dokument.md)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Current

**author**: [Organization Example Organization for Author](Organization-mii-exa-studie-author.md)

**custodian**: [Organization Example Organization for Custodian](Organization-mii-exa-studie-custodian.md)

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Size** | **Title** |
| * | application/pdf | [https://example.com/fhir/Binary/document](https://example.com/fhir/Binary/document) | 2000 | Beispiel Dokument |


### Contexts

| | |
| :--- | :--- |
| - | **Related** |
| * | [ResearchStudy LIFE-Adult-Study](ResearchStudy-mii-exa-studie-cohort.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-studie-dokument",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "author" : [{
    "reference" : "Organization/mii-exa-studie-author"
  }],
  "custodian" : {
    "reference" : "Organization/mii-exa-studie-custodian"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://example.com/fhir/Binary/document",
      "size" : 2000,
      "title" : "Beispiel Dokument"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "ResearchStudy/mii-exa-studie-cohort"
    }]
  }
}

```
