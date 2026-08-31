<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/Library.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv -->
## Register (Library)

---

**Beschreibung**

Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative.



---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Library.id      | Must-support, jedoch optional        |
| Library.meta       | Must-support, jedoch optional         |
| Library.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe [CapabilityStatement](capability-statements.html). In allen anderen Fällen optional.         |
| Library.name | Es sollte ein geeigneter menschenlesbarer Name verwendet werden |
| Library.identifier | In den meisten Fällen existiert bisher kein NamingSystem für die Vergabe der RegisterIds. Ein eigenes lokales NamingSystem sollte daher verwendet werden. |
| Library.relatedArtifact.document.url | Homepage des Registers bzw. Link zur weiterführenden Dokumentation |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Studienregister.url |

---

**Beispiele**

Beispiel (minimal):

[Library-mii-exa-studie-register](Library-mii-exa-studie-register.html)
