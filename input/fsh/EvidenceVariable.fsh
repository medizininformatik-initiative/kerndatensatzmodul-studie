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
* characteristic.extension MS
* characteristic.extension contains MII_EX_Studie_Backport_linkId named linkId 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_definitionReference named definitionReference 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_definitionCanonical named definitionCanonical 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_Definition_By_Type_And_Value named definitionByTypeAndValue 0..1 MS
* characteristic.extension contains MII_EX_Studie_Backport_Definition_By_Combination named definitionByCombination 0..1 MS
* characteristic.definitionReference 0..0
* characteristic.definitionCanonical 0..0
* characteristic.definitionDataRequirement 0..0
* characteristic.definitionTriggerDefinition 0..0

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

Extension: MII_EX_Studie_Backport_Definition_By_Type_And_Value
Id: mii-ex-studie-backport-definition-by-type-and-value
Title: "MII EX Studie Backport DefinitionByTypeAndValue"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"
* extension contains type 1..1 MS and method 0..* and device 0..1 and offset 0..1 and value 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from http://terminology.hl7.org/ValueSet/usage-context-type (example)
* extension[method].value[x] only CodeableConcept
* extension[method].valueCodeableConcept from http://hl7.org/fhir/ValueSet/definition-method (example)
* extension[device].value[x] only Reference(Device or DeviceMetric)
* extension[value].value[x] only CodeableConcept or boolean or Quantity or Range or Reference or id
* extension[offset].value[x] only CodeableConcept
* extension[offset].valueCodeableConcept from http://hl7.org/fhir/ValueSet/characteristic-offset (example)

Extension: MII_EX_Studie_Backport_Definition_By_Combination
Id: mii-ex-studie-backport-definition-by-combination
Title: "MII EX Studie Backport DefinitionByCombination"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCombination"
* extension contains code 1..1 MS and threshhold 0..1 and characteristic 1..* MS
* extension[code].value[x] only code
* extension[code].valueCode from http://hl7.org/fhir/ValueSet/characteristic-combination (required)
* extension[threshhold].value[x] only positiveInt
* extension[characteristic].value[x] only id

Instance: mii-exa-studie-ein-auschluss-kriterium
InstanceOf: MII_PR_Studie_EinAuschlussKriterium
Usage: #example
* status = #active
* characteristic
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Höchstalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Mindestalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Geschlecht"
* characteristic[=].exclude = false  
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Weitere Einschlusskriterien"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "diagnostizierte Depressionen, Angststörungen, andere psychiatrische Erkrankungen"
* characteristic[=].exclude = true
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Einnahme von Antidepressiva, Opioiden, Antikonvulsiva"
* characteristic[=].exclude = true
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "weitere neurologische Erkrankungen"
* characteristic[=].exclude = true