Profile: MII_Studie
Parent: ResearchStudy
Id: MII-Studie
* status MS
* title MS
* identifier MS
* identifier.value MS
* identifier.system MS
* extension MS
* extension contains http://fhir.de/StructureDefinition/OeffentlicherTitel named OeffentlicherTitel 0..1 MS
* extension contains http://fhir.de/StructureDefinition/WissenschaftlicherTitel named WissenschaftlicherTitel 0..1 MS
* extension contains http://fhir.de/StructureDefinition/Akronym named Akronym 0..1 MS
* extension contains http://fhir.de/StructureDefinition/Randomisierungsmethode named Randomisierungsmethode 0..1 MS
* arm.name MS
* category MS
* arm.extension MS
* arm.extension contains http://fhir.de/StructureDefinition/Rekrutierungsstart named Rekrutierungsstart 0..1 MS
* arm.extension contains http://fhir.de/StructureDefinition/Rekrutierungsziel named Rekrutierungsziel 0..1 MS
* arm.extension contains http://fhir.de/StructureDefinition/Rekrutierungsstand named Rekrutierungsstand 0..1 MS
* arm.extension contains http://fhir.de/StructureDefinition/RekrutierungsstandGenauigkeit named RekrutierungsstandGenauigkeit 0..1 MS
* arm.extension contains http://fhir.de/StructureDefinition/RekrutierungsstandDatum named RekrutierungsstandDatum 0..1 MS

Extension: OeffentlicherTitel
Id: OeffentlicherTitel
* ^url = "http://fhir.de/StructureDefinition/OeffentlicherTitel"
* value[x] only string

Extension: WissenschaftlicherTitel
Id: WissenschaftlicherTitel
* ^url = "http://fhir.de/StructureDefinition/WissenschaftlicherTitel"
* value[x] only string

Extension: Akronym
Id: Akronym
* ^url = "http://fhir.de/StructureDefinition/Akronym"
* value[x] only string

Extension: Rekrutierungsstart
Id: Rekrutierungsstart
* ^url = "http://fhir.de/StructureDefinition/Rekrutierungsstart"
* value[x] only date

Extension: Rekrutierungsziel
Id: Rekrutierungsziel
* ^url = "http://fhir.de/StructureDefinition/Rekrutierungsziel"
* value[x] only integer

Extension: Rekrutierungsstand
Id: Rekrutierungsstand
* ^url = "http://fhir.de/StructureDefinition/Rekrutierungsstand"
* value[x] only integer

Extension: RekrutierungsstandGenauigkeit
Id: RekrutierungsstandGenauigkeit
* ^url = "http://fhir.de/StructureDefinition/RekrutierungsstandGenauigkeit"
* value[x] only code

Extension: RekrutierungsstandDatum
Id: RekrutierungsstandDatum
* ^url = "http://fhir.de/StructureDefinition/RekrutierungsstandDatum"
* value[x] only date

Extension: Randomisierungsmethode
Id: Randomisierungsmethode
* ^url = "http://fhir.de/StructureDefinition/Randomisierungsmethode"
* value[x] only code

Instance: MII-Studie-Example
InstanceOf: MII_Studie
Usage: #example
* status = #active
* title = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* identifier.value = "DRKS00031294"
* identifier.system = "https://drks.de/id"
* extension[OeffentlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[WissenschaftlicherTitel].valueString = "Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue"
* extension[Akronym].valueString = "tDCS"
* extension[Randomisierungsmethode].valueCode = #Zufallszuteilung
* category = #interventional
* arm.name = "frontale anodale tDCS  (verum condition)"
* arm.extension[Rekrutierungsstart].valueDate = "2023-01-12"
* arm.extension[Rekrutierungsziel].valueInteger = 40
* arm.extension[Rekrutierungsstand].valueInteger = 35
* arm.extension[RekrutierungsstandGenauigkeit].valueCode = #good
* arm.extension[RekrutierungsstandDatum].valueDate = "2023-02-17"