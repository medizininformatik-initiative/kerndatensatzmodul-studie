# mii-exa-studie-register - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-studie-register**

## Library: mii-exa-studie-register 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/Library/mii-exa-studie-register | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:DRKS - Deutsches Register Klinischer Studien |
| *Weitere Identifikatoren:*https://example.com/fhir/sid/drks#DRKS | |

-------

**German**

-------

**Exception parsing generated Narrative (see /tmp/liquid-751a9620-d1e8-4df3-9818-ee98fa2a584d.html): unexpected non-end of element null::a at line 130 column 50**



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
