Profile: MII_PR_Studie_EinAuschlussKriterium
Title: "MII PR Studie EinAuschlussKriterium"
Parent: EvidenceVariable
Id: mii-pr-studie-ein-auschluss-kriterium
* insert addMetadata
* insert PR_CS_VS_Version
* insert Publisher
* status MS
* status ^short = "Status"
* insert Translation(status ^short, de-DE, Entwurf | aktiv | zurückgezogen | unbekannt)
* insert Translation(status ^short, en-US, draft | active | retired | unknown)
* status ^definition = "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts."
* insert Translation(status ^definition, de-DE, Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts.)
* insert Translation(status ^definition, en-US, The status of this evidence variable. Enables tracking the life-cycle of the content.)
* characteristic MS
* characteristic ^short = "Characteristic"
* insert Translation(characteristic ^short, de-DE, Was die Mitglieder des Evidence-Elements definiert)
* insert Translation(characteristic ^short, en-US, What defines the members of the evidence element)
* characteristic ^definition = "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer “und”-Semantik angewendet."
* insert Translation(characteristic ^definition, de-DE, Eine Eigenschaft\, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer \"und\"-Semantik angewendet.)
* insert Translation(characteristic ^definition, en-US, A characteristic that defines the members of the evidence element. Multiple characteristics are applied with \"and\" semantics.)
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
* insert addMetadata
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"
* value[x] only id

Extension: MII_EX_Studie_Backport_definitionReference
Id: mii-ex-studie-backport-definitionReference
Title: "MII EX Studie Backport definitionReference"
* insert addMetadata
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"
* value[x] only Reference(EvidenceVariable or Evidence or Group)

Extension: MII_EX_Studie_Backport_definitionCanonical
Id: mii-ex-studie-backport-definitionCanonical
Title: "MII EX Studie Backport definitionCanonical"
* insert addMetadata
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"
* value[x] only Canonical(EvidenceVariable or Evidence)

Extension: MII_EX_Studie_Backport_Definition_By_Type_And_Value
Id: mii-ex-studie-backport-definition-by-type-and-value
Title: "MII EX Studie Backport DefinitionByTypeAndValue"
* insert addMetadata
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
* insert addMetadata
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"
* extension contains code 1..1 MS and threshhold 0..1 and characteristic 1..* MS
* extension[code].value[x] only code
* extension[code].valueCode from http://hl7.org/fhir/ValueSet/characteristic-combination (required)
* extension[threshhold].value[x] only positiveInt
* extension[characteristic].value[x] only id

Instance: EvidenceVariable-characteristic-description
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/ResearchStudy-characteristic-description"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_CharacteristicDescription"
* status = #active
* description = "Suchparameter für ResearchStudy.characteristic.description"
* experimental = false
* code = #characteristicDescription
* base = #EvidenceVariable
* type = #string
* expression = "ResearchStudy.characteristic.description"

Instance: mii-exa-studie-ein-auschluss-kriterium
InstanceOf: MII_PR_Studie_EinAuschlussKriterium
Usage: #example
* status = #active
* characteristic
  * definitionCodeableConcept.text = "kein Höchstalter"
  * description = "Höchstalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept.text = "18 Jahre"
  * description = "Mindestalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept.text = "Alle"
  * description = "Geschlecht"
* characteristic[=].exclude = false
* characteristic[+]
  * extension[linkId].valueId = "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Kognitive Fatigue (WeiMUS kognitive Skala >= 17)"
* characteristic[=].exclude = false
* characteristic[+]
  * extension[linkId].valueId = "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Positiver SARS-CoV-2(COVID-19)-Befund; mind. 3 Monate alt"
* characteristic[=].exclude = false    
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Weitere Einschlusskriterien"
  * extension[definitionByCombination]
    * extension[code].valueCode = #any-of
    * extension[characteristic].valueId = "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
    * extension[characteristic][+].valueId = "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
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