<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Involved Person Role (PractitionerRole)

---

**Description**

This profile describes the role of a person involved in a study, e.g. the study lead, including the associated organization and contact details in the Medical Informatics Initiative.

**Relationship to the study**

* The study references the involved person: the study lead via `ResearchStudy.principalInvestigator`, further involved persons via the extension [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.html) (`extension:party`).
* The **role in the study** is given in `AssociatedParty.extension:role`, not in `PractitionerRole.code`. `PractitionerRole.code` describes the professional role within the organization, which applies beyond the study.
* The **name and academic degree** of the person are given in the `Practitioner` referenced via `PractitionerRole.practitioner` (`name.given`, `name.family`, `name.prefix`).



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| PractitionerRole.id      | Must-support, but optional        |
| PractitionerRole.meta       | Must-support, but optional         |
| PractitionerRole.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| PractitionerRole.code      | Professional role within the organization, not the role in the study (see above). In-house coding may be used here. |
| PractitionerRole.telecom      | Care must be taken to ensure that only information already published by the study itself is exposed here |
| PractitionerRole.organization | To find all persons associated with a study, the use of Reference.reference is preferred over Reference.identifier.|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.extension:AssociatedParty.extension:role |  Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.practitioner → Practitioner.name.given |  Forschungsvorhaben.Beteiligter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family |  Forschungsvorhaben.Beteiligter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix |  Forschungsvorhaben.Beteiligter.Kontakt.Grad |
| PractitionerRole.telecom |  Forschungsvorhaben.Beteiligter.Kontakt.Email, Forschungsvorhaben.Beteiligter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name |  Forschungsvorhaben.Beteiligter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address |  Forschungsvorhaben.Beteiligter.Standort.Adresse |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.principalInvestigator |  Forschungsvorhaben.Studienleiter |
| PractitionerRole.practitioner → Practitioner.name.given |  Forschungsvorhaben.Studienleiter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family |  Forschungsvorhaben.Studienleiter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix |  Forschungsvorhaben.Studienleiter.Kontakt.Grad |
| PractitionerRole.telecom |  Forschungsvorhaben.Studienleiter.Kontakt.Email, Forschungsvorhaben.Studienleiter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name |  Forschungsvorhaben.Studienleiter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address |  Forschungsvorhaben.Studienleiter.Standort.Adresse |

---

**Examples**

Example (minimal):

[PractitionerRole-mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.html)
