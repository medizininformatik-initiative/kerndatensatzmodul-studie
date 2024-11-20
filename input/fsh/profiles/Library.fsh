Profile: MII_PR_Studie_Register
Title: "MII PR Studie Register"
Parent: Library
Id: mii-pr-studie-register
* insert addMetadata
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* type MS
* name MS
* identifier MS
* identifier.value 1..1 MS
* identifier.system 1..1 MS
* relatedArtifact MS
  * document 1..1 MS
    * url 1..1 MS
* extension contains mii-ex-studie-quell-register named quellRegister 0..1

Extension: MII_EX_Studie_Quell_Register
Id: mii-ex-studie-quell-register
Title: "MII EX Studie Quell Register"
* insert addMetadata
* value[x] only boolean

Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* status = #active
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "https://example.com/fhir/sid/drks"
* relatedArtifact.document.url = "https://drks.de/"
* relatedArtifact.type = #documentation

Instance: Library-quellregister
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-quellregister"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Quellregister"
* status = #active
* description = "Suchparameter für Library.extension:QuellRegister"
* experimental = false
* code = #quellregister
* base = #Library
* type = #token
* expression = "Library.extension.where(url='https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register').value"

Instance: Library-relatedArtifactUrl
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/Library-relatedArtifactUrl"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_RelatedArtifactUrl"
* status = #active
* description = "Suchparameter für Library.relatedArtifact.document.url"
* experimental = false
* code = #relatedArtifactUrl
* base = #Library
* type = #uri
* expression = "Library.relatedArtifact.document.url"