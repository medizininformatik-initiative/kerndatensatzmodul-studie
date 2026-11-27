<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Registry (Library)

---

**Description**

This profile describes a research registry in the Medical Informatics Initiative.



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| Library.id      | Must-support, but optional        |
| Library.meta       | Must-support, but optional         |
| Library.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| Library.name | A suitable human-readable name should be used |
| Library.identifier | In most cases, no NamingSystem currently exists for assigning registry IDs. A local NamingSystem of your own should therefore be used. |
| Library.relatedArtifact.document.url | Homepage of the registry or link to further documentation |

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Studienregister.url |

---

**Examples**

Example (minimal):

[Library-mii-exa-studie-register](Library-mii-exa-studie-register.html)
