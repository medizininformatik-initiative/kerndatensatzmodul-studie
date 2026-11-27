<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Subject (ResearchSubject)

---

This profile describes a subject in the Medical Informatics Initiative.

---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| ResearchSubject.id      | Must-support, but optional        |
| ResearchSubject.meta       | Must-support, but optional         |
| ResearchSubject.meta.profile       | MANDATORY for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| Patient.identifier:subjectIdentificationCode      | Fixed NamingSystem for the uniform, cross-site querying of the identifier (for analyses)         |
| ResearchSubject.period.start      | Start date (inclusion of the patient in the study)      |
| ResearchSubject.period.end      | End date (completion of the study or exclusion of the patient)       |
| ResearchSubject.study      | Reference to the metadata of the study in which the patient is participating. |
| ResearchSubject.individual      | Every subject MUST be assigned to a patient. |
| ResearchSubject.consent      | Consent to the study or a regulatory basis MUST be present. Further requirements for the modeling of the consent may arise from other modules. |

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |

---

**Examples**

See example (minimal):

[ResearchSubject-mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.html)
