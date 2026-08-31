# Research Study Category - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Research Study Category**

## ValueSet: Research Study Category 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ValueSet/research-study-category | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-31 | *Computable Name*:ResearchStudyCategoryVS |

 
Value set of high-level categories describing the type of a research study. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "research-study-category-vs",
  "url" : "http://example.org/fhir/ValueSet/research-study-category",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "ResearchStudyCategoryVS",
  "title" : "Research Study Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T21:27:29+00:00",
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
