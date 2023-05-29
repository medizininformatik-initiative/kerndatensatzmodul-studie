Profile: MII_PR_Studie_EinAuschlussKriterium
Title: "MII PR Studie EinAuschlussKriterium"
Parent: EvidenceVariable
Id: mii-pr-studie-ein-auschluss-kriterium
* status MS
* characteristic MS
* characteristic.description MS
* characteristic.definition[x] MS
* characteristic.exclude MS
* characteristic.usageContext 0..0
* characteristic.extension contains MII_EX_Studie_Backport_linkId named linkId 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_definitionReference named definitionReference 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_definitionReference named definitionCanonical 0..1 MS
//* characteristic.extension contains MII_EX_Studie_Backport_Definition_By_Type_And_Value named definitionByTypeAndValue 0..1 MS
//* characteristic.extension contains MII_EX_Studie_Backport_Definition_By_Combination named definitionByCombination 0..1 MS

Extension: MII_EX_Studie_Backport_linkId
Id: mii-ex-studie-backport-linkId
Title: "MII EX Studie Backport linkId"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"
* value[x] only string

Extension: MII_EX_Studie_Backport_definitionReference
Id: mii-ex-studie-backport-definitionReference
Title: "MII EX Studie Backport definitionReference"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"
* value[x] only Reference(EvidenceVariable or Evidence or Group)

Extension: MII_EX_Studie_Backport_definitionCanonical
Id: mii-ex-studie-backport-definitionCanonical
Title: "MII EX Studie Backport definitionCanonical"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"
* value[x] only Canonical(EvidenceVariable or Evidence)

//Extension: MII_EX_Studie_Backport_Definition_By_Type_And_Value
//Id: mii-ex-studie-backport-definition-by-type-and-value
//Title: "MII EX Studie Backport DefinitionByTypeAndValue"
//* extension contains value 1..1 MS and type 1..1 MS and offset 0..1 MS
//* extension[value].value[x] only CodeableConcept or boolean or Quantity or Range or Reference or id
//* extension[type].value[x] only Coding
//* extension[type].valueCoding from http://terminology.hl7.org/ValueSet/usage-context-type (example)
//* extension[offset].value[x] only CodeableConcept

//Extension: MII_EX_Studie_Backport_Definition_By_Combination
//Id: mii-ex-studie-backport-definition-by-combination
//Title: "MII EX Studie Backport DefinitionByCombination"
//* extension contains code 1..1 MS and threshhold 1..1 MS and characteristic 1..* MS
//* extension[code].value[x] only code
//* extension[code].valueCode from http://hl7.org/fhir/ValueSet/characteristic-combination (required)
//* extension[threshhold].value[x] only positiveInt

// Can this ever work? Can we set a contentReference in a choice type field?
// * extension[characteristic].value[x] only contentReference #EvidenceVariable.characteristic