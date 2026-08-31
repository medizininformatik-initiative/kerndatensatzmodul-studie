# Research Study Category Code System - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Research Study Category Code System**

## CodeSystem: Research Study Category Code System 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/research-study-category | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*:ResearchStudyCategoryCS |

 
High-level categories describing the overall type of a research study. 

This Code system is referenced in the definition of the following value sets:

* [Research Study Category](ValueSet-research-study-category-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "research-study-category-cs",
  "url" : "http://example.org/fhir/CodeSystem/research-study-category",
  "version" : "2026.0.1",
  "name" : "ResearchStudyCategoryCS",
  "title" : "Research Study Category Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T20:03:51+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "High-level categories describing the overall type of a research study.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "interventional",
    "display" : "Interventional study",
    "definition" : "A study in which participants are assigned to receive one or more interventions so that outcomes can be evaluated."
  },
  {
    "code" : "observational",
    "display" : "Observational study",
    "definition" : "A study in which biomedical or health outcomes are observed in a defined population without assignment of specific interventions."
  },
  {
    "code" : "registry",
    "display" : "Registry study",
    "definition" : "A study primarily based on data collected in a registry (e.g. disease or quality registry)."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Other study category not covered by the existing codes. Use with additional descriptive text."
  }]
}

```
