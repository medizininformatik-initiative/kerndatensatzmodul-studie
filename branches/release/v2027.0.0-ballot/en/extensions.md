# Extensions - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **Medizinisches Forschungsvorhaben** module (naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the base resources and profiles cannot express; the profiles that use them are on the [Profiles](profiles.md) page.

### Overview of the Extensions

| | | |
| :--- | :--- | :--- |
| [MII EX Studie Studienregister](StructureDefinition-mii-ex-studie-studienregister.md) | ResearchStudy | Reference to the study registry the research project is registered in. |
| [MII EX Studie Eligibility](StructureDefinition-mii-ex-studie-eligibility.md) | ResearchStudy | Reference to the inclusion and exclusion criteria of the research project. |
| [MII EX Studie Akronym](StructureDefinition-mii-ex-studie-akronym.md) | ResearchStudy | Acronym of a research project. |
| [MII EX Studie Rekrutierung](StructureDefinition-mii-ex-studie-rekrutierung.md) | ResearchStudy | Recruitment status of a research project, with current count, target, start, and accuracy of the figures. |
| [MII EX Studie Finanzierung](StructureDefinition-mii-ex-studie-finanzierung.md) | ResearchStudy | Funding of a research project. |
| [MII EX Studie Ethikvotum](StructureDefinition-mii-ex-studie-ethikvotum.md) | ResearchStudy | Ethics approval of a research project, with status, ethics committee, and reference number. |
| [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.md) | ResearchStudy | R5 backport of`ResearchStudy.associatedParty`, representing persons and organizations involved in a research project in FHIR R4. |
| [MII EX Studie Backport Label](StructureDefinition-mii-ex-studie-backport-label.md) | ResearchStudy | R5 backport of`ResearchStudy.label`, representing additional titles and designations of a research project in FHIR R4. |
| [MII EX Studie Quell Register](StructureDefinition-mii-ex-studie-quell-register.md) | Library | Flags whether a research registry is a source registry. |
| [MII EX Studie Backport linkId](StructureDefinition-mii-ex-studie-backport-linkId.md) | EvidenceVariable.characteristic | R5 backport of the`linkId`element for`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.md) | EvidenceVariable.characteristic | R5 backport of the`definitionReference`element for`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.md) | EvidenceVariable.characteristic | R5 backport of the`definitionCanonical`element for`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport DefinitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.md) | EvidenceVariable.characteristic | R5 backport of the`definitionByTypeAndValue`element for`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport DefinitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.md) | EvidenceVariable.characteristic | R5 backport of the`definitionByCombination`element for`EvidenceVariable.characteristic`in FHIR R4. |

