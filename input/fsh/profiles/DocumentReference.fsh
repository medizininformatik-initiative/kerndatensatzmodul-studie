Profile: MII_PR_Studie_Dokument
Title: "MII PR Studie Dokument"
Parent: DocumentReference
Id: mii-pr-studie-dokument
Description: "Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative."
* insert Translation(^title, de, MII PR Studie Dokument)
* insert Translation(^title, en, MII PR Study Document)
* insert Translation(^description, de, Dieses Profil beschreibt ein Dokument/Publikation in der Medizininformatik-Initiative.)
* insert Translation(^description, en, This profile describes a document/publication within the Medical Informatics Initiative.)
* insert PR_CS_VS_Version
* insert Publisher
* status MS
* status ^short = "Status"
* insert Translation(status ^short, de, Status)
* insert Translation(status ^short, en, Status)
* status ^definition = "aktuell | ersetzt | irrtümlich eingegeben"
* insert Translation(status ^definition, de, aktuell | ersetzt | irrtümlich eingegeben)
* insert Translation(status ^definition, en, current | superseded | entered-in-error)
* content MS
* content ^short = "Content"
* insert Translation(content ^short, de, Referenziertes Dokument)
* insert Translation(content ^short, en, Document referenced)
* content ^definition = "Das referenzierte Dokument und Format. Es können mehrere Wiederholungen des Inhaltselements vorhanden sein, jeweils in einem anderen Format."
* insert Translation(content ^definition, de, Das referenzierte Dokument und Format. Es können mehrere Wiederholungen des Inhaltselements vorhanden sein\, jeweils in einem anderen Format.)
* insert Translation(content ^definition, en, The document and format referenced. There may be multiple content element repetitions\, each with a different format.)
* content.attachment MS 
* content.attachment.url 1..1 MS
* content.attachment.title MS
* content.attachment.contentType 1..1 MS
* content.attachment.size MS
* author MS
* author ^short = "Author"
* insert Translation(author ^short, de, Wer und/oder was das Dokument erstellt hat)
* insert Translation(author ^short, en, Who and/or what authored the document)
* author ^definition = " Identifiziert, wer für das Hinzufügen der Informationen zum Dokument verantwortlich ist."
* insert Translation(author ^definition, de,  Identifiziert\, wer für das Hinzufügen der Informationen zum Dokument verantwortlich ist.)
* insert Translation(author ^definition, en,  Identifies who is responsible for adding the information to the document.)
* custodian MS
* custodian ^short = "Custodian"
* insert Translation(custodian ^short, de, Organisation\, die das Dokument verwaltet.)
* insert Translation(custodian ^short, en, Organization which maintains the document)
* custodian ^definition = "Identifiziert die Organisation oder Gruppe, die für die laufende Pflege und den Zugriff auf das Dokument verantwortlich ist."
* insert Translation(custodian ^definition, de, Identifiziert die Organisation oder Gruppe\, die für die laufende Pflege und den Zugriff auf das Dokument verantwortlich ist.)
* insert Translation(custodian ^definition, en, Identifies the organization or group who is responsible for ongoing maintenance of and access to the document.)
* context MS
* context ^short = "Context"
* insert Translation(context ^short, de, Klinischer Kontext des Dokuments.)
* insert Translation(context ^short, en, Clinical context of document)
* context ^definition = "Der klinische Kontext, in dem das Dokument erstellt wurde."
* insert Translation(context ^definition, de, Der klinische Kontext\, in dem das Dokument erstellt wurde.)
* insert Translation(context ^definition, en, The clinical context in which the document was prepared)
* context.related MS

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