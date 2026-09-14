# Beispiele - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Beispiele**

## Beispiele

**Nur synthetische Daten** — niemals echte oder realistisch wirkende Patientendaten in Beispielen verwenden.

### Übersicht der Beispiele

| | | |
| :--- | :--- | :--- |
| [mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.md) | [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.md) | Studie „LIFE-Adult-Study" mit Ethikvotum, Rekrutierung, Finanzierung, Studienregister und Ein-/Ausschlusskriterien. |
| [mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.md) | [MII PR Studie Dokument](StructureDefinition-mii-pr-studie-dokument.md) | Dokument/Publikation zur Studie. |
| [mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md) | [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) | Ein- und Ausschlusskriterien der Studie (Alter, Geschlecht, Vorerkrankungen). |
| [mii-exa-studie-register](Library-mii-exa-studie-register.md) | [MII PR Studie Register](StructureDefinition-mii-pr-studie-register.md) | Forschungsregister „DRKS - Deutsches Register Klinischer Studien". |
| [mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md) | [MII PR Studie Beteiligte Person](StructureDefinition-mii-pr-studie-beteiligte-person.md) | An der Studie beteiligte Person in der Rolle „doctor". |
| [mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.md) | [MII PR Studie Proband](StructureDefinition-mii-pr-studie-proband.md) | Proband*in mit Status „candidate" in der Studie. |
| [mii-exa-studie-studieneinschluss-anfrage](ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.md) | [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md) | Anfrage zum Einschluss eines Patienten in die Studie. |

Die o. g. Beispiele referenzieren zusätzliche unterstützende Ressourcen (`Organization`, `Practitioner`, `Patient`, `Consent`, weitere `ResearchStudy`- und `EvidenceVariable`-Instanzen), die keine eigenen Modul-Profile sind, aber für ein vollständiges, konsistentes Beispielset benötigt werden. Alle Beispiele sind zusätzlich in einem Transaction-Bundle zusammengefasst: [mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.md).

