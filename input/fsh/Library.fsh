Profile: MII_Register
Parent: Library
Id: MII-Register
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

Extension: QuellRegister
Id: QuellRegister
* ^url = "http://fhir.de/StructureDefinition/QuellRegister"
* value[x] only boolean

Instance: MII-Register-Example
InstanceOf: MII_Register
Usage: #example
* status = #active
* type = #asset-collection
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "System"
* relatedArtifact.document.url = "https://example.com/RelatedArtifact"
* relatedArtifact.type = #documentation
* extension[QuellRegister].valueBoolean = true