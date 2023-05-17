Profile: MII_PR_Studie_Dokument
Title: "MII PR Studie Dokument"
Parent: DocumentReference
Id: mii-pr-studie-dokument
* status MS
* content MS
  * attachment MS 
    * url MS
    * title MS
    * contentType MS
    * size MS
* author MS
* custodian MS

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