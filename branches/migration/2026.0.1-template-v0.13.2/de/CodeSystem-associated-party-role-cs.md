# Associated Party Role Code System - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Associated Party Role Code System**

## CodeSystem: Associated Party Role Code System 

| | |
| :--- | :--- |
| *Offizielle URL*:http://example.org/fhir/CodeSystem/associated-party-role | *Version*:2026.0.1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:AssociatedPartyRoleCS |

 
Roles that an associated party may have in relation to an entity such as a research study. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [Associated Party Role](ValueSet-associated-party-role-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "associated-party-role-cs",
  "url" : "http://example.org/fhir/CodeSystem/associated-party-role",
  "version" : "2026.0.1",
  "name" : "AssociatedPartyRoleCS",
  "title" : "Associated Party Role Code System",
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
  "description" : "Roles that an associated party may have in relation to an entity such as a research study.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "sponsor",
    "display" : "Sponsor",
    "definition" : "An individual or organization that takes responsibility for the initiation, management, and financing of a study."
  },
  {
    "code" : "funder",
    "display" : "Funder",
    "definition" : "An entity providing financial support but not assuming overall responsibility as a sponsor."
  },
  {
    "code" : "principal-investigator",
    "display" : "Principal Investigator",
    "definition" : "The lead researcher responsible for the overall conduct of the study."
  },
  {
    "code" : "co-investigator",
    "display" : "Co-Investigator",
    "definition" : "A researcher who shares scientific responsibility with the principal investigator."
  },
  {
    "code" : "coordinator",
    "display" : "Study Coordinator",
    "definition" : "A person coordinating day-to-day operational activities of the study."
  },
  {
    "code" : "publisher",
    "display" : "Publisher",
    "definition" : "An entity responsible for publishing or disseminating results."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "A role not covered by the defined codes."
  }]
}

```
