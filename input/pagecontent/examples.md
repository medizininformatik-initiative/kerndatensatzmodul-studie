{:.bg-warning}
**Nur synthetische Daten** — niemals echte oder realistisch wirkende
Patientendaten in Beispielen verwenden.

### Übersicht der Beispiele

| Beispiel | Profil | Inhalt |
|----------|--------|--------|
| [mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.html) | [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.html) | Studie „LIFE-Adult-Study" mit Ethikvotum, Rekrutierung, Finanzierung, Studienregister und Ein-/Ausschlusskriterien. |
| [mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.html) | [MII PR Studie Dokument](StructureDefinition-mii-pr-studie-dokument.html) | Dokument/Publikation zur Studie. |
| [mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.html) | [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.html) | Ein- und Ausschlusskriterien der Studie (Alter, Geschlecht, Vorerkrankungen). |
| [mii-exa-studie-register](Library-mii-exa-studie-register.html) | [MII PR Studie Register](StructureDefinition-mii-pr-studie-register.html) | Forschungsregister „DRKS - Deutsches Register Klinischer Studien". |
| [mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.html) | [MII PR Studie Beteiligte Person](StructureDefinition-mii-pr-studie-beteiligte-person.html) | An der Studie beteiligte Person in der Rolle „doctor". |
| [mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.html) | [MII PR Studie Proband](StructureDefinition-mii-pr-studie-proband.html) | Proband*in mit Status „candidate" in der Studie. |
| [mii-exa-studie-studieneinschluss-anfrage](ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.html) | [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.html) | Anfrage zum Einschluss eines Patienten in die Studie. |

Die o. g. Beispiele referenzieren zusätzliche unterstützende Ressourcen (`Organization`,
`Practitioner`, `Patient`, `Consent`, weitere `ResearchStudy`- und `EvidenceVariable`-Instanzen),
die keine eigenen Modul-Profile sind, aber für ein vollständiges, konsistentes Beispielset benötigt
werden. Alle Beispiele sind zusätzlich in einem Transaction-Bundle zusammengefasst:
[mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.html).

