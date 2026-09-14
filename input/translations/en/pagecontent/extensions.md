<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined profiles-and-extensions.md per the TF-KDS-agreed
     menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/extensions.md. -->


### Extensions

This page lists the FHIR extensions defined by the **Medizinisches Forschungsvorhaben** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page.

### Overview of the Extensions

| Extension | Context | Description |
|-----------|---------|--------------|
| [MII EX Studie Studienregister](StructureDefinition-mii-ex-studie-studienregister.html) | ResearchStudy | Reference to the study registry the research project is registered in. |
| [MII EX Studie Eligibility](StructureDefinition-mii-ex-studie-eligibility.html) | ResearchStudy | Reference to the inclusion and exclusion criteria of the research project. |
| [MII EX Studie Akronym](StructureDefinition-mii-ex-studie-akronym.html) | ResearchStudy | Acronym of a research project. |
| [MII EX Studie Rekrutierung](StructureDefinition-mii-ex-studie-rekrutierung.html) | ResearchStudy | Recruitment status of a research project, with current count, target, start, and accuracy of the figures. |
| [MII EX Studie Finanzierung](StructureDefinition-mii-ex-studie-finanzierung.html) | ResearchStudy | Funding of a research project. |
| [MII EX Studie Ethikvotum](StructureDefinition-mii-ex-studie-ethikvotum.html) | ResearchStudy | Ethics approval of a research project, with status, ethics committee, and reference number. |
| [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.html) | ResearchStudy | R5 backport of `ResearchStudy.associatedParty`, representing persons and organizations involved in a research project in FHIR R4. |
| [MII EX Studie Backport Label](StructureDefinition-mii-ex-studie-backport-label.html) | ResearchStudy | R5 backport of `ResearchStudy.label`, representing additional titles and designations of a research project in FHIR R4. |
| [MII EX Studie Quell Register](StructureDefinition-mii-ex-studie-quell-register.html) | Library | Flags whether a research registry is a source registry. |
| [MII EX Studie Backport linkId](StructureDefinition-mii-ex-studie-backport-linkId.html) | EvidenceVariable.characteristic | R5 backport of the `linkId` element for `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.html) | EvidenceVariable.characteristic | R5 backport of the `definitionReference` element for `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.html) | EvidenceVariable.characteristic | R5 backport of the `definitionCanonical` element for `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport DefinitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.html) | EvidenceVariable.characteristic | R5 backport of the `definitionByTypeAndValue` element for `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport DefinitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.html) | EvidenceVariable.characteristic | R5 backport of the `definitionByCombination` element for `EvidenceVariable.characteristic` in FHIR R4. |

