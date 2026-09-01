# Library-relatedArtifactUrl - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Library-relatedArtifactUrl**

## SearchParameter: Library-relatedArtifactUrl 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-relatedArtifactUrl | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-01 | *Computable Name*:SP_MII_Studie_RelatedArtifactUrl |

 
Suchparameter für Library.relatedArtifact.document.url 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "Library-relatedArtifactUrl",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-relatedArtifactUrl",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "SP_MII_Studie_RelatedArtifactUrl",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T10:00:57+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suchparameter für Library.relatedArtifact.document.url",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "relatedArtifactUrl",
  "base" : ["Library"],
  "type" : "uri",
  "expression" : "Library.relatedArtifact.document.url"
}

```
