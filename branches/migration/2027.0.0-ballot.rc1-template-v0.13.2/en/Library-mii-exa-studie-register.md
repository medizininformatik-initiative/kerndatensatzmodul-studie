# mii-exa-studie-register - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-studie-register**

## Library: mii-exa-studie-register 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/Library/mii-exa-studie-register | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-31 | *Computable Name*:DRKS - Deutsches Register Klinischer Studien |
| *Other Identifiers:*https://example.com/fhir/sid/drks#DRKS | |

-------

**English**

-------

**Exception parsing generated Narrative (see /tmp/liquid-84e7d85f-8c45-4cd0-bd76-4a08fc1e13b8.html): unexpected non-end of element null::a at line 130 column 50**



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "mii-exa-studie-register",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/Library/mii-exa-studie-register",
  "identifier" : [{
    "system" : "https://example.com/fhir/sid/drks",
    "value" : "DRKS"
  }],
  "version" : "2027.0.0-ballot.rc1",
  "name" : "DRKS - Deutsches Register Klinischer Studien",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-08-31T22:12:11+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "documentation",
    "url" : "https://drks.de/",
    "document" : {
      "url" : "https://drks.de/"
    }
  }]
}

```
