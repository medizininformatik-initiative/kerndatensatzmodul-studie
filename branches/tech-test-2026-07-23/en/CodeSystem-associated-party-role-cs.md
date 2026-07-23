# Associated Party Role Code System - v2026.0.1

## CodeSystem: Associated Party Role Code System 

 
Roles that an associated party may have in relation to an entity such as a research study. 

This Code system is referenced in the definition of the following value sets:

* [AssociatedPartyRoleVS](ValueSet-associated-party-role-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-23T12:42:11+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Roles that an associated party may have in relation to an entity such as a research study.",
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
