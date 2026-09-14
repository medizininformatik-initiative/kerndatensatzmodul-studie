# Examples - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

**Synthetic data only** — never use real or realistic-looking patient data in examples.

### Overview of the Examples

| | | |
| :--- | :--- | :--- |
| [mii-exa-studie-cohort](ResearchStudy-mii-exa-studie-cohort.md) | [MII PR Studie Studie](StructureDefinition-mii-pr-studie-studie.md) | Study "LIFE-Adult-Study" with ethics approval, recruitment, funding, study registry, and inclusion/exclusion criteria. |
| [mii-exa-studie-dokument](DocumentReference-mii-exa-studie-dokument.md) | [MII PR Studie Dokument](StructureDefinition-mii-pr-studie-dokument.md) | Document/publication related to the study. |
| [mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md) | [MII PR Studie EinAuschlussKriterium](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) | Inclusion and exclusion criteria of the study (age, sex, pre-existing conditions). |
| [mii-exa-studie-register](Library-mii-exa-studie-register.md) | [MII PR Studie Register](StructureDefinition-mii-pr-studie-register.md) | Research registry "DRKS - German Clinical Trials Register". |
| [mii-exa-studie-beteiligte-person](PractitionerRole-mii-exa-studie-beteiligte-person.md) | [MII PR Studie Beteiligte Person](StructureDefinition-mii-pr-studie-beteiligte-person.md) | Person involved in the study in the role "doctor". |
| [mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.md) | [MII PR Studie Proband](StructureDefinition-mii-pr-studie-proband.md) | Research subject with status "candidate" in the study. |
| [mii-exa-studie-studieneinschluss-anfrage](ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.md) | [MII PR Studie Studieneinschluss Anfrage](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md) | Request to include a patient in the study. |

The examples above reference additional supporting resources (`Organization`, `Practitioner`, `Patient`, `Consent`, and further `ResearchStudy` and `EvidenceVariable` instances) that are not module profiles of their own, but are needed for a complete, consistent example set. All examples are also combined into a transaction bundle: [mii-studie-test-data-bundle-studie](Bundle-mii-studie-test-data-bundle-studie.md).

