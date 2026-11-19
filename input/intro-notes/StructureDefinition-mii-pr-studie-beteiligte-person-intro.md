<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/PractitionerRole.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv -->
## Rolle beteiligte Person (PractitionerRole)

---

**Beschreibung**

Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative.

**Zusammenhang mit der Studie**

* Die Studie verweist auf die beteiligte Person: Die Studienleitung wird über `ResearchStudy.principalInvestigator` referenziert, weitere beteiligte Personen über die Extension [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.html) (`extension:party`).
* Die **Rolle in der Studie** wird in `AssociatedParty.extension:role` angegeben, nicht in `PractitionerRole.code`. `PractitionerRole.code` beschreibt die berufliche Rolle in der Organisation, die über die Studie hinaus gilt.
* **Name und akademischer Grad** der Person stehen im über `PractitionerRole.practitioner` referenzierten `Practitioner` (`name.given`, `name.family`, `name.prefix`).



---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| PractitionerRole.id      | Must-support, jedoch optional        |
| PractitionerRole.meta       | Must-support, jedoch optional         |
| PractitionerRole.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe [CapabilityStatement](capability-statements.html). In allen anderen Fällen optional.         |
| PractitionerRole.code      | Berufliche Rolle in der Organisation, nicht die Rolle in der Studie (siehe oben). Hausinterne Kodierung kann hier verwendet werden. |
| PractitionerRole.telecom      | Es ist darauf zu achten, dass hier nur Informationen exponiert werden, die bereits durch die Studie an sich veröffentlicht wurden |
| PractitionerRole.organization | Um alle zu einer Studie zugehörigen Personen zu finden ist die Verwendung von Referenz.reference anstelle von Referent.identifier zu bevorzugen.|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.extension:AssociatedParty.extension:role |  Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.practitioner → Practitioner.name.given |  Forschungsvorhaben.Beteiligter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family |  Forschungsvorhaben.Beteiligter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix |  Forschungsvorhaben.Beteiligter.Kontakt.Grad |
| PractitionerRole.telecom |  Forschungsvorhaben.Beteiligter.Kontakt.Email, Forschungsvorhaben.Beteiligter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name |  Forschungsvorhaben.Beteiligter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address |  Forschungsvorhaben.Beteiligter.Standort.Adresse |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.principalInvestigator |  Forschungsvorhaben.Studienleiter |
| PractitionerRole.practitioner → Practitioner.name.given |  Forschungsvorhaben.Studienleiter.Kontakt.Vorname |
| PractitionerRole.practitioner → Practitioner.name.family |  Forschungsvorhaben.Studienleiter.Kontakt.Nachname |
| PractitionerRole.practitioner → Practitioner.name.prefix |  Forschungsvorhaben.Studienleiter.Kontakt.Grad |
| PractitionerRole.telecom |  Forschungsvorhaben.Studienleiter.Kontakt.Email, Forschungsvorhaben.Studienleiter.Kontakt.Tel |
| PractitionerRole.organization → Organization.name |  Forschungsvorhaben.Studienleiter.Kontakt.Zugehoerigkeit |
| PractitionerRole.organization → Organization.address |  Forschungsvorhaben.Studienleiter.Standort.Adresse |

---

**Beispiele**

Beispiel (minimal):

[PractitionerRole-mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.html)
