<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree -->
## Document (DocumentReference)

---

**Description**

This profile describes a document / publication in the Medical Informatics Initiative.



---

**Notes**

| FHIR Element | Explanation |
|--------------|-----------|
| DocumentReference.id      | Must-support, but optional        |
| DocumentReference.meta       | Must-support, but optional         |
| DocumentReference.meta.profile       | Mandatory for querying in the DIC repository, including the version number of the profile. See [CapabilityStatement](capability-statements.html). Optional in all other cases.         |
| DocumentReference.content.attachment.url | This absolute URL should point to a Binary endpoint of a FHIR server. The notes in the FHIR core specification on [retrieving Binary resources](https://www.hl7.org/fhir/r4/binary.html#rest) must be observed. |
| DocumentReference.content.attachment.title       | The title should contain a meaningful, human-readable description; the element should not be used for the file name. |
| DocumentReference.custodian     | If the site is not available as an Organization resource, Reference.display or Reference.identifier may also be used if applicable. |
| DocumentReference.author     | If the author is not available as a Practitioner resource, Reference.display or Reference.identifier may also be used if applicable. |
|DocumentReference.context.related|Specification of the study context|

---

**Mapping**

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Publikation.Titel |
| DocumentReference.author |  Forschungsvorhaben.Publikation.Autor |

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.author |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

---

**Examples**

Example (minimal):

[DocumentReference-mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.html)
