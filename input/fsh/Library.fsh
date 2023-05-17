Profile: MII_PR_Studie_Register
Title: "MII PR Studie Register"
Parent: Library
Id: mii-pr-studie-register
* type MS
* name MS
* identifier MS
* identifier.value MS
* identifier.system MS
* relatedArtifact MS
  * document MS
    * url MS
* extension MS
* extension contains http://fhir.de/StructureDefinition/QuellRegister named QuellRegister 0..1 MS

Extension: MII_EX_Studie_Quell_Register
Title: "MII EX Studie Quell Register"
Id: mii-ex-studie-quell-register
* ^url = "http://fhir.de/StructureDefinition/QuellRegister"
* value[x] only boolean

Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* status = #active
* type = #asset-collection
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "System"
* relatedArtifact.document.url = "https://example.com/RelatedArtifact"
* relatedArtifact.type = #documentation
* extension[QuellRegister].valueBoolean = true