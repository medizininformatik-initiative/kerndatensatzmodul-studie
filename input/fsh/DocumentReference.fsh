Profile: MII_Dokument
Parent: DocumentReference
Id: MII-Dokument
* status MS
* content MS
  * attachment MS 
    * url MS
    * title MS
    * contentType MS
    * size MS
* author MS
* custodian MS

Instance: MII-Dokument-Example
InstanceOf: MII_Dokument
Usage: #example
* status = #current
* content.attachment.url = "https://example.com/document"
* content.attachment.title = "Beispiel Dokument"
* content.attachment.contentType = #application/pdf
* content.attachment.size = 2000
* author = Reference(Organization/Example)
* custodian = Reference(Organization/Example)