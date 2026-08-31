# Associated Party Role - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Associated Party Role**

## ValueSet: Associated Party Role 

| | |
| :--- | :--- |
| *Offizielle URL*:http://example.org/fhir/ValueSet/associated-party-role | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:AssociatedPartyRoleVS |

 
Value set of roles that an associated party may have in relation to a research study. 

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
  "id" : "associated-party-role-vs",
  "url" : "http://example.org/fhir/ValueSet/associated-party-role",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "AssociatedPartyRoleVS",
  "title" : "Associated Party Role",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T22:12:11+00:00",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Value set of roles that an associated party may have in relation to a research study.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/CodeSystem/associated-party-role"
    }]
  }
}

```
