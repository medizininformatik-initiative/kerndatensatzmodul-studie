Profile: MII_PR_Studie_EinAuschlussKriterium
Title: "MII PR Studie EinAuschlussKriterium"
Parent: EvidenceVariable
Id: mii-pr-studie-ein-auschluss-kriterium
Description: "Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative."
* insert Translation(^title, de, MII PR Studie EinAuschlussKriterium)
* insert Translation(^title, en, MII PR Study Inclusion/Exclusion Criterion)
* insert Translation(^description, de, Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative.)
* insert Translation(^description, en, This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative.)
* insert PR_CS_VS_Version
* insert Publisher
* status MS
* status ^short = "Status"
* insert Translation(status ^short, de, Entwurf | aktiv | zurückgezogen | unbekannt)
* insert Translation(status ^short, en, draft | active | retired | unknown)
* status ^definition = "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts."
* insert Translation(status ^definition, de, Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts.)
* insert Translation(status ^definition, en, The status of this evidence variable. Enables tracking the life-cycle of the content.)
* characteristic MS
* characteristic ^short = "Characteristic"
* insert Translation(characteristic ^short, de, Was die Mitglieder des Evidence-Elements definiert)
* insert Translation(characteristic ^short, en, What defines the members of the evidence element)
* characteristic ^definition = "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer “und”-Semantik angewendet."
* insert Translation(characteristic ^definition, de, Eine Eigenschaft\, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer \"und\"-Semantik angewendet.)
* insert Translation(characteristic ^definition, en, A characteristic that defines the members of the evidence element. Multiple characteristics are applied with \"and\" semantics.)
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
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* value[x] only id

Extension: MII_EX_Studie_Backport_definitionReference
Id: mii-ex-studie-backport-definitionReference
Title: "MII EX Studie Backport definitionReference"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* value[x] only Reference(EvidenceVariable or Evidence or Group)

Extension: MII_EX_Studie_Backport_definitionCanonical
Id: mii-ex-studie-backport-definitionCanonical
Title: "MII EX Studie Backport definitionCanonical"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* value[x] only Canonical(EvidenceVariable or Evidence)

Extension: MII_EX_Studie_Backport_Definition_By_Type_And_Value
Id: mii-ex-studie-backport-definition-by-type-and-value
Title: "MII EX Studie Backport DefinitionByTypeAndValue"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
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
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* extension contains code 1..1 MS and threshhold 0..1 and characteristic 1..* MS
* extension[code].value[x] only code
* extension[code].valueCode from http://hl7.org/fhir/ValueSet/characteristic-combination (required)
* extension[threshhold].value[x] only positiveInt
* extension[characteristic].value[x] only id

Instance: EvidenceVariable-characteristic-description
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/EvidenceVariable-characteristic-description"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_CharacteristicDescription"
* status = #active
* description = "Suchparameter für EvidenceVariable.characteristic.description"
* experimental = false
* code = #characteristicDescription
* base = #EvidenceVariable
* type = #string
* expression = "EvidenceVariable.characteristic.description"
