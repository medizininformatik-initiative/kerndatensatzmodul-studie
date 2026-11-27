<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Involved Person (PractitionerRole)

---

**Description**

This profile describes an involved person within a study in the Medical Informatics Initiative.



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| PractitionerRole.id      | Must-support, but optional        |
| PractitionerRole.meta       | Must-support, but optional         |
| PractitionerRole.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| PractitionerRole.code      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| PractitionerRole.telecom      | Care must be taken to ensure that only information already published by the study itself is exposed here |
| PractitionerRole.organization | To find all persons associated with a study, the use of Reference.reference is preferred over Reference.identifier.|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.telecom |  Forschungsvorhaben.Beteiligter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Beteiligter.Standort |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Studienleiter |
| PractitionerRole.telecom |  Forschungsvorhaben.Studienleiter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Studienleiter.Standort |

---

**Examples**

Example (minimal):

[PractitionerRole-mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.html)
