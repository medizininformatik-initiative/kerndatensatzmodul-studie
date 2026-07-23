# Associated Party Role - v2026.0.1

## ValueSet: Associated Party Role 

 
Value set of roles that an associated party may have in relation to a research study. 

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
  "id" : "associated-party-role-vs",
  "url" : "http://example.org/fhir/ValueSet/associated-party-role",
  "version" : "2026.0.1",
  "name" : "AssociatedPartyRoleVS",
  "title" : "Associated Party Role",
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
  "description" : "Value set of roles that an associated party may have in relation to a research study.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/CodeSystem/associated-party-role"
    }]
  }
}

```
