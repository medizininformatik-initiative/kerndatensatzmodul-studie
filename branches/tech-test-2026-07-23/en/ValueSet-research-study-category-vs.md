# Research Study Category - v2026.0.1

## ValueSet: Research Study Category 

 
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
  "version" : "2026.0.1",
  "name" : "ResearchStudyCategoryVS",
  "title" : "Research Study Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value set of high-level categories describing the type of a research study.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/CodeSystem/research-study-category"
    }]
  }
}

```
