# Research Study Category - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Research Study Category**

## ValueSet: Research Study Category 

| | |
| :--- | :--- |
| *Offizielle URL*:http://example.org/fhir/ValueSet/research-study-category | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:ResearchStudyCategoryVS |

 
Value set of high-level categories describing the type of a research study. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "research-study-category-vs",
  "url" : "http://example.org/fhir/ValueSet/research-study-category",
  "version" : "2026.0.1",
  "name" : "ResearchStudyCategoryVS",
  "title" : "Research Study Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T20:20:31+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Value set of high-level categories describing the type of a research study.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/CodeSystem/research-study-category"
    }]
  }
}

```
