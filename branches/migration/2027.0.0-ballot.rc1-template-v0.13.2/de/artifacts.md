# Artefaktübersicht - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Metadata Studie  ](CapabilityStatement-MII-CPS-Metadata-Studie.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss um das Modul Studie der Medizininformatik Initiative zu implementieren. |

### Verhalten: Suchparameter (SearchParameter) 

Diese definieren die Eigenschaften, nach denen ein RESTful-Server durchsucht werden kann. Sie können auch zum Sortieren und Einbeziehen verwandter Ressourcen verwendet werden.

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

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Studie LogicalModel  ](StructureDefinition-mii-lm-studie-logicalmodel.md) | Logische Repräsentation der Forschungsvorhaben |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Studie Beteiligte Person  ](StructureDefinition-mii-pr-studie-beteiligte-person.md) | Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Dokument  ](StructureDefinition-mii-pr-studie-dokument.md) | Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative. |
| [ MII PR Studie EinAuschlussKriterium  ](StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.md) | Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Proband  ](StructureDefinition-mii-pr-studie-proband.md) | Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative. |
| [ MII PR Studie Register  ](StructureDefinition-mii-pr-studie-register.md) | Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative. |
| [ MII PR Studie Studie  ](StructureDefinition-mii-pr-studie-studie.md) | Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative. |
| [ MII PR Studie Studieneinschluss Anfrage  ](StructureDefinition-mii-pr-studie-studieneinschluss-anfrage.md) | Anfrage zum Studieneinschluss |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

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

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Associated Party Role  ](ValueSet-associated-party-role-vs.md) | Value set of roles that an associated party may have in relation to a research study. |
| [ Research Study Category  ](ValueSet-research-study-category-vs.md) | Value set of high-level categories describing the type of a research study. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Associated Party Role Code System  ](CodeSystem-associated-party-role-cs.md) | Roles that an associated party may have in relation to an entity such as a research study. |
| [ Research Study Category Code System  ](CodeSystem-research-study-category-cs.md) | High-level categories describing the overall type of a research study. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

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

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-studie-manifest  ](Parameters-mii-param-studie-manifest.md) |

