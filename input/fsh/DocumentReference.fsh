Profile: MII_PR_Studie_Dokument
Title: "MII PR Studie Dokument"
Parent: DocumentReference
Id: mii-pr-studie-dokument
* status MS
* content MS
  * attachment MS 
    * url 1..1 MS
    * title MS
    * contentType 1..1 MS
    * size MS
* author MS
* custodian MS
* context MS
  * related MS

Instance:  mii-exa-studie-dokument
InstanceOf: MII_PR_Studie_Dokument
Usage: #example
* status = #current
* content.attachment.url = "https://example.com/fhir/Binary/document"
* content.attachment.title = "Beispiel Dokument"
* content.attachment.contentType = #application/pdf
* content.attachment.size = 2000
* author = Reference(Organization/Example)
* custodian = Reference(Organization/Example)
* context.related = Reference(ResearchStudy/Example)

Instance: DocumentReference-title
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-title"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Title"
* status = #active
* description = "Suchparameter für DocumentReference.content.attachment.title"
* experimental = false
* code = #title
* base = #DocumentReference
* type = #string
* expression = "DocumentReference.content.attachment.title"

Instance: DocumentReference-size
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/SearchParameter/DocumentReference-size"
* version = "1.0.0-ballot"
* name = "SP_MII_Studie_Size"
* status = #active
* description = "Suchparameter für DocumentReference.content.attachment.size"
* experimental = false
* code = #size
* base = #DocumentReference
* type = #number
* expression = "DocumentReference.content.attachment.size"