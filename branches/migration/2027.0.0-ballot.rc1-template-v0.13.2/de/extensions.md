# Extensions - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Medizinisches Forschungsvorhaben** definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.md).

### Übersicht der Extensions

| | | |
| :--- | :--- | :--- |
| [MII EX Studie Studienregister](StructureDefinition-mii-ex-studie-studienregister.md) | ResearchStudy | Referenzierung des Studienregisters, in dem das Forschungsvorhaben registriert ist. |
| [MII EX Studie Eligibility](StructureDefinition-mii-ex-studie-eligibility.md) | ResearchStudy | Referenzierung der Ein- und Ausschlusskriterien des Forschungsvorhabens. |
| [MII EX Studie Akronym](StructureDefinition-mii-ex-studie-akronym.md) | ResearchStudy | Angabe des Akronyms eines Forschungsvorhabens. |
| [MII EX Studie Rekrutierung](StructureDefinition-mii-ex-studie-rekrutierung.md) | ResearchStudy | Abbildung des Rekrutierungsstands eines Forschungsvorhabens mit Stand, Ziel, Start und Genauigkeit der Angaben. |
| [MII EX Studie Finanzierung](StructureDefinition-mii-ex-studie-finanzierung.md) | ResearchStudy | Angabe der Finanzierung eines Forschungsvorhabens. |
| [MII EX Studie Ethikvotum](StructureDefinition-mii-ex-studie-ethikvotum.md) | ResearchStudy | Abbildung des Ethikvotums eines Forschungsvorhabens mit Status, Ethikkommission und Bearbeitungsnummer. |
| [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.md) | ResearchStudy | R5-Backport von`ResearchStudy.associatedParty`zur Abbildung beteiligter Personen und Organisationen eines Forschungsvorhabens in FHIR R4. |
| [MII EX Studie Backport Label](StructureDefinition-mii-ex-studie-backport-label.md) | ResearchStudy | R5-Backport von`ResearchStudy.label`zur Abbildung zusätzlicher Titel und Bezeichnungen eines Forschungsvorhabens in FHIR R4. |
| [MII EX Studie Quell Register](StructureDefinition-mii-ex-studie-quell-register.md) | Library | Kennzeichnung, ob es sich bei einem Forschungsregister um ein Quellregister handelt. |
| [MII EX Studie Backport linkId](StructureDefinition-mii-ex-studie-backport-linkId.md) | EvidenceVariable.characteristic | R5-Backport des Elements`linkId`für`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.md) | EvidenceVariable.characteristic | R5-Backport des Elements`definitionReference`für`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.md) | EvidenceVariable.characteristic | R5-Backport des Elements`definitionCanonical`für`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport DefinitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.md) | EvidenceVariable.characteristic | R5-Backport des Elements`definitionByTypeAndValue`für`EvidenceVariable.characteristic`in FHIR R4. |
| [MII EX Studie Backport DefinitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.md) | EvidenceVariable.characteristic | R5-Backport des Elements`definitionByCombination`für`EvidenceVariable.characteristic`in FHIR R4. |

