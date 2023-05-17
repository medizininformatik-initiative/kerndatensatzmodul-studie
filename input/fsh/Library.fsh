Profile: MII_PR_Studie_Register
Title: "MII PR Studie Register"
Parent: Library
Id: mii-pr-studie-register
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* type MS
* name MS
* identifier MS
* identifier.value 1..1 MS
* identifier.system 1..1 MS
* relatedArtifact MS
  * document 1..1 MS
    * url 1..1 MS
* extension MS
* extension contains https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register named QuellRegister 0..1 MS

Extension: MII_EX_Studie_Quell_Register
Title: "MII EX Studie Quell Register"
Id: mii-ex-studie-quell-register
* value[x] only boolean

Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* status = #active
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "System"
* relatedArtifact.document.url = "https://example.com/fhir/sid/AbkuerzungenRegister"
* relatedArtifact.type = #documentation
* extension[QuellRegister].valueBoolean = true