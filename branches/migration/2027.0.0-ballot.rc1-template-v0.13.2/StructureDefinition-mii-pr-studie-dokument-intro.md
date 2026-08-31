<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/DocumentReference.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv -->
## Dokument (DocumentReference)

---

**Beschreibung**

Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative.



---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| DocumentReference.id      | Must-support, jedoch optional        |
| DocumentReference.meta       | Must-support, jedoch optional         |
| DocumentReference.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe [CapabilityStatement](capability-statements.html). In allen anderen Fällen optional.         |
| DocumentReference.content.attachment.url | Diese absolute URL sollte auf einen Binary-Endpunkt eines FHIR-Servers verweisen. Die Hinweise der FHIR-Kernspezifikation zum [Abruf von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest) sind zu beachten. |
| DocumentReference.content.attachment.title       | Der Titel sollte eine sinnvolle menschenlesbare Beschreibung enthalten, das Element sollte nicht für den Dateinamen verwendet werden. |
| DocumentReference.custodian     | Sollte der Standort nicht als Organization-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
| DocumentReference.author     | Sollte der Author nicht als Practitioner-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
|DocumentReference.context.related|Angabe des Studienkontexts|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Publikation.Titel |
| DocumentReference.author |  Forschungsvorhaben.Publikation.Autor |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.author |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

---

**Beispiele**

Beispiel (minimal):

[DocumentReference-mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.html)
