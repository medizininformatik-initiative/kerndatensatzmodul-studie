{:.bg-warning}
**Synthetic data only** — never use real or realistic-looking patient data in
examples.

### Overview of the Examples

| Example | Profile | Content |
|---------|---------|---------|
| [mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.html) | [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.html) | Study "LIFE-Adult-Study" with ethics approval, recruitment, funding, study registry, and inclusion/exclusion criteria. |
| [mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.html) | [MII PR Studie Dokument](StructureDefinition-mii-pr-studie-dokument.html) | Document/publication related to the study. |
| [mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.html) | [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.html) | Inclusion and exclusion criteria of the study (age, sex, pre-existing conditions). |
| [mii-exa-studie-register](Library-mii-exa-studie-register.html) | [MII PR Studie Register](StructureDefinition-mii-pr-studie-register.html) | Research registry "DRKS - German Clinical Trials Register". |
| [mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.html) | [MII PR Studie Beteiligte Person](StructureDefinition-mii-pr-studie-beteiligte-person.html) | Person involved in the study in the role "doctor". |
| [mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.html) | [MII PR Studie Proband](StructureDefinition-mii-pr-studie-proband.html) | Research subject with status "candidate" in the study. |
| [mii-exa-studie-studieneinschluss-anfrage](ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.html) | [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.html) | Request to include a patient in the study. |

The examples above reference additional supporting resources (`Organization`,
`Practitioner`, `Patient`, `Consent`, and further `ResearchStudy` and `EvidenceVariable`
instances) that are not module profiles of their own, but are needed for a complete,
consistent example set. All examples are also combined into a transaction bundle:
[mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.html).

