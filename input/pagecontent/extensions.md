<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/extensions.md (aufgeteilt aus
     der früheren Kombi-Seite profiles-and-extensions.md). -->


### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Medizinisches Forschungsvorhaben**
definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die
Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.html).

### Übersicht der Extensions

| Extension | Kontext | Beschreibung |
|-----------|---------|--------------|
| [MII EX Studie Studienregister](StructureDefinition-mii-ex-studie-studienregister.html) | ResearchStudy | Referenzierung des Studienregisters, in dem das Forschungsvorhaben registriert ist. |
| [MII EX Studie Eligibility](StructureDefinition-mii-ex-studie-eligibility.html) | ResearchStudy | Referenzierung der Ein- und Ausschlusskriterien des Forschungsvorhabens. |
| [MII EX Studie Akronym](StructureDefinition-mii-ex-studie-akronym.html) | ResearchStudy | Angabe des Akronyms eines Forschungsvorhabens. |
| [MII EX Studie Rekrutierung](StructureDefinition-mii-ex-studie-rekrutierung.html) | ResearchStudy | Abbildung des Rekrutierungsstands eines Forschungsvorhabens mit Stand, Ziel, Start und Genauigkeit der Angaben. |
| [MII EX Studie Finanzierung](StructureDefinition-mii-ex-studie-finanzierung.html) | ResearchStudy | Angabe der Finanzierung eines Forschungsvorhabens. |
| [MII EX Studie Ethikvotum](StructureDefinition-mii-ex-studie-ethikvotum.html) | ResearchStudy | Abbildung des Ethikvotums eines Forschungsvorhabens mit Status, Ethikkommission und Bearbeitungsnummer. |
| [MII EX Studie Backport AssociatedParty](StructureDefinition-mii-ex-studie-backport-associatedParty.html) | ResearchStudy | R5-Backport von `ResearchStudy.associatedParty` zur Abbildung beteiligter Personen und Organisationen eines Forschungsvorhabens in FHIR R4. |
| [MII EX Studie Backport Label](StructureDefinition-mii-ex-studie-backport-label.html) | ResearchStudy | R5-Backport von `ResearchStudy.label` zur Abbildung zusätzlicher Titel und Bezeichnungen eines Forschungsvorhabens in FHIR R4. |
| [MII EX Studie Quell Register](StructureDefinition-mii-ex-studie-quell-register.html) | Library | Kennzeichnung, ob es sich bei einem Forschungsregister um ein Quellregister handelt. |
| [MII EX Studie Backport linkId](StructureDefinition-mii-ex-studie-backport-linkId.html) | EvidenceVariable.characteristic | R5-Backport des Elements `linkId` für `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.html) | EvidenceVariable.characteristic | R5-Backport des Elements `definitionReference` für `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.html) | EvidenceVariable.characteristic | R5-Backport des Elements `definitionCanonical` für `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport DefinitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.html) | EvidenceVariable.characteristic | R5-Backport des Elements `definitionByTypeAndValue` für `EvidenceVariable.characteristic` in FHIR R4. |
| [MII EX Studie Backport DefinitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.html) | EvidenceVariable.characteristic | R5-Backport des Elements `definitionByCombination` für `EvidenceVariable.characteristic` in FHIR R4. |

