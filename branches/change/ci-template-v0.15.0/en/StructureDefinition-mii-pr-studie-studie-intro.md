<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Study (ResearchStudy)

---

**Description**

This profile describes a study in the Medical Informatics Initiative.



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| ResearchStudy.id      | Must-support, but optional        |
| ResearchStudy.meta       | Must-support, but optional         |
| ResearchStudy.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| ResearchStudy.identifier | In most cases, there will be no NamingSystem for assigning the business IDs. A local NamingSystem of your own should therefore be used. |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:Randomisierungsmethode      | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |
| ResearchStudy.extension:associatedParty | This extension can be used if more contact persons need to be specified for the study than the cardinality of ResearchStudy.principalInvestigator or ResearchStudy.sponsor allows. |
| ResearchStudy.category    | In-house coding may be used here. The next version of this module is expected to require further specifications for standardizing a ValueSet. |

---

**NamingSystems**

Preferred URLs for the associated NamingSystems have already been defined for the following study registries:

| Registry | URL |
|----------|-----|
| clinicaltrials.gov | https://clinicaltrials.gov |
| German Clinical Trials Register (DRKS) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks |
| Universal Trial Number (UTN) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/utn |
| EudraCT | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract |

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.title |  Forschungsvorhaben.Titel  |
| ResearchStudy.focus |  Forschungsvorhaben.Studienfokus |
| ResearchStudy.keyword |  Forschungsvorhaben.Schlagwort |
| ResearchStudy.extension:OeffentlicherTitel |  Forschungsvorhaben.Titel.OeffentlicherTitel |
| ResearchStudy.extension:WissenschaftlicherTitel |  Forschungsvorhaben.Titel.WissenschaftlicherTitel |
| ResearchStudy.extension:Akronym |  Forschungsvorhaben.Titel.Akronym |
| ResearchStudy.extension:Rekrutierungsstart |  Forschungsvorhaben.Studiendesign.Rekrutierungsstart |
| ResearchStudy.arm.name |  Forschungsvorhaben.Studiendesign.Studienarm.Name |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Studientyp |
| ResearchStudy.extension:Rekrutierungsziel |  Forschungsvorhaben.Studiendesign.Rekrutierungsziel |
| ResearchStudy.extension:Rekrutierungsstand |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandGenauigkeit |
| ResearchStudy.extension:RekrutierungsstandDatum |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandDatum |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Randomisierungsmethode |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.extension:finanzierung |  Forschungsvorhaben.Finanzierung |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| ResearchStudy.identifier.value |  Forschungsvorhaben.BusinessID.id |
| ResearchStudy.identifier.system |  Forschungsvorhaben.BusinessID.System |

---

**Examples**

See example (minimal):

[ResearchStudy-mii-exa-studie-studie](ResearchStudy-mii-exa-studie-studie.html)
