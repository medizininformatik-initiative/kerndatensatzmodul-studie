# Artifacts Summary - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

 There is no translation page available for the current page, so it has been rendered in the default language 

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Metadata Studie  ](CapabilityStatement-MII-CPS-Metadata-Studie.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss um das Modul Studie der Medizininformatik Initiative zu implementieren. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [ DocumentReference-size  ](SearchParameter-DocumentReference-size.md) | Suchparameter für DocumentReference.content.attachment.size |
| [ DocumentReference-title  ](SearchParameter-DocumentReference-title.md) | Suchparameter für DocumentReference.content.attachment.title |
| [ EvidenceVariable-characteristic-description  ](SearchParameter-EvidenceVariable-characteristic-description.md) | Suchparameter für EvidenceVariable.characteristic.description |
| [ Library-quellregister  ](SearchParameter-Library-quellregister.md) | Suchparameter für Library.extension:QuellRegister |
| [ Library-relatedArtifactUrl  ](SearchParameter-Library-relatedArtifactUrl.md) | Suchparameter für Library.relatedArtifact.document.url |
| [ ResearchStudy-akronym  ](SearchParameter-ResearchStudy-akronym.md) | Suchparameter für ResearchStudy.extension:Akronym |
| [ ResearchStudy-armName  ](SearchParameter-ResearchStudy-armName.md) | Suchparameter für ResearchStudy.arm.name |
| [ ResearchStudy-finanzierung  ](SearchParameter-ResearchStudy-finanzierung.md) | Suchparameter für ResearchStudy.extension:Finanzierung |
| [ ResearchStudy-label  ](SearchParameter-ResearchStudy-label.md) | Suchparameter für ResearchStudy.extension:label |
| [ ResearchStudy-rekrutierungsstand  ](SearchParameter-ResearchStudy-rekrutierungsstand.md) | Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand |
| [ ResearchStudy-rekrutierungsstand-datum  ](SearchParameter-ResearchStudy-rekrutierungsstand-datum.md) | Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-datum |
| [ ResearchStudy-rekrutierungsstand-genauigkeit  ](SearchParameter-ResearchStudy-rekrutierungsstand-genauigkeit.md) | Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit |
| [ ResearchStudy-rekrutierungsstart  ](SearchParameter-ResearchStudy-rekrutierungsstart.md) | Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsstart |
| [ ResearchStudy-rekrutierungsziel  ](SearchParameter-ResearchStudy-rekrutierungsziel.md) | Suchparameter für ResearchStudy.extension:Rekrutierung.extension:rekrutierungsziel |
| [ ResearchStudy-studienregister  ](SearchParameter-ResearchStudy-studienregister.md) | Suchparameter für ResearchStudy.extension:Studienregister |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Studie LogicalModel  ](StructureDefinition-mii-lm-studie-logicalmodel.md) | Logische Repräsentation der Forschungsvorhaben |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR Studie Beteiligte Person  ](StructureDefinition-mii-pr-studie-beteiligte-person.md) | Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Dokument  ](StructureDefinition-mii-pr-studie-dokument.md) | Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative. |
| [ MII PR Studie EinAuschlussKriterium  ](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) | Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Proband  ](StructureDefinition-mii-pr-studie-proband.md) | Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative. |
| [ MII PR Studie Register  ](StructureDefinition-mii-pr-studie-register.md) | Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative. |
| [ MII PR Studie Studie  ](StructureDefinition-mii-pr-studie-studie.md) | Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Studieneinschluss Anfrage  ](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md) | Anfrage zum Studieneinschluss |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| |
| :--- |
| [ MII EX Studie Akronym  ](StructureDefinition-mii-ex-studie-akronym.md) |
| [ MII EX Studie Backport AssociatedParty  ](StructureDefinition-mii-ex-studie-backport-associatedParty.md) |
| [ MII EX Studie Backport DefinitionByCombination  ](StructureDefinition-mii-ex-studie-backport-definition-by-combination.md) |
| [ MII EX Studie Backport DefinitionByTypeAndValue  ](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.md) |
| [ MII EX Studie Backport Label  ](StructureDefinition-mii-ex-studie-backport-label.md) |
| [ MII EX Studie Backport definitionCanonical  ](StructureDefinition-mii-ex-studie-backport-definitionCanonical.md) |
| [ MII EX Studie Backport definitionReference  ](StructureDefinition-mii-ex-studie-backport-definitionReference.md) |
| [ MII EX Studie Backport linkId  ](StructureDefinition-mii-ex-studie-backport-linkId.md) |
| [ MII EX Studie Eligibility  ](StructureDefinition-mii-ex-studie-eligibility.md) |
| [ MII EX Studie Ethikvotum  ](StructureDefinition-mii-ex-studie-ethikvotum.md) |
| [ MII EX Studie Finanzierung  ](StructureDefinition-mii-ex-studie-finanzierung.md) |
| [ MII EX Studie Quell Register  ](StructureDefinition-mii-ex-studie-quell-register.md) |
| [ MII EX Studie Rekrutierung  ](StructureDefinition-mii-ex-studie-rekrutierung.md) |
| [ MII EX Studie Studienregister  ](StructureDefinition-mii-ex-studie-studienregister.md) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Associated Party Role  ](ValueSet-associated-party-role-vs.md) | Value set of roles that an associated party may have in relation to a research study. |
| [ Research Study Category  ](ValueSet-research-study-category-vs.md) | Value set of high-level categories describing the type of a research study. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Associated Party Role Code System  ](CodeSystem-associated-party-role-cs.md) | Roles that an associated party may have in relation to an entity such as a research study. |
| [ Research Study Category Code System  ](CodeSystem-research-study-category-cs.md) | High-level categories describing the overall type of a research study. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ Example Reference Study  ](ResearchStudy-mii-exa-studie-reference-study.md) |  |
| [ Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue  ](ResearchStudy-mii-exa-studie-studie.md) | Diese Studie untersucht den Einfluss repetitiver anodaler Gleichstromstimulation des linken dorsolateralen präfrontalen Kortex (dlPFC ) auf subjektive und objektive Kennwerte und assoziierte EEG-Parameter der Fatigue bei Long-COVID Patient*innen. Die Studie ist sham-kontrolliert und doppelt-verblindet. |
| [ LIFE-Adult-Study  ](ResearchStudy-mii-exa-studie-cohort.md) | Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden. |
| [ mii-exa-studie-author  ](Organization-mii-exa-studie-author.md) |  |
| [ mii-exa-studie-beteiligte-person  ](PractitionerRole-mii-exa-studie-beteiligte-person.md) |  |
| [ mii-exa-studie-consent  ](Consent-mii-exa-studie-consent.md) |  |
| [ mii-exa-studie-custodian  ](Organization-mii-exa-studie-custodian.md) |  |
| [ mii-exa-studie-dokument  ](DocumentReference-mii-exa-studie-dokument.md) |  |
| [ mii-exa-studie-ein-auschluss-kriterium  ](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md) |  |
| [ mii-exa-studie-evidence-variable-age-restriction  ](EvidenceVariable-mii-exa-studie-evidence-variable-age-restriction.md) |  |
| [ mii-exa-studie-patient  ](Patient-mii-exa-studie-patient.md) | Patient: Studien Patient |
| [ mii-exa-studie-practitioner  ](Practitioner-mii-exa-studie-practitioner.md) |  |
| [ mii-exa-studie-practitioner-organization  ](Organization-mii-exa-studie-practitioner-organization.md) |  |
| [ mii-exa-studie-proband  ](ResearchSubject-mii-exa-studie-proband.md) |  |
| [ mii-exa-studie-register  ](Library-mii-exa-studie-register.md) |  |
| [ mii-exa-studie-studieneinschluss-anfrage  ](ServiceRequest-mii-exa-studie-studieneinschluss-anfrage.md) |  |
| [ mii-studie-test-data-bundle-studie  ](Bundle-mii-studie-test-data-bundle-studie.md) | Bundle: Example Study |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-studie-manifest  ](Parameters-mii-param-studie-manifest.md) |

