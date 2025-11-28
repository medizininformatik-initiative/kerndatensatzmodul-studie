// Document reference example
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

// Evidence variable example
Instance: mii-exa-studie-ein-auschluss-kriterium
InstanceOf: MII_PR_Studie_EinAuschlussKriterium
Usage: #example
* status = #active
* characteristic
  * definitionCodeableConcept.text = "kein Höchstalter"
  * description = "Höchstalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept.text = "18 Jahre"
  * description = "Mindestalter"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept.text = "Alle"
  * description = "Geschlecht"
* characteristic[=].exclude = false
* characteristic[+]
  * extension[linkId].valueId = "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Kognitive Fatigue (WeiMUS kognitive Skala >= 17)"
* characteristic[=].exclude = false
* characteristic[+]
  * extension[linkId].valueId = "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Positiver SARS-CoV-2(COVID-19)-Befund; mind. 3 Monate alt"
* characteristic[=].exclude = false    
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Weitere Einschlusskriterien"
  * extension[definitionByCombination]
    * extension[code].valueCode = #any-of
    * extension[characteristic].valueId = "aa83ebf3-cfe4-4ed6-aa71-0779c28e85a2"
    * extension[characteristic][+].valueId = "8e8f63ff-65f1-40cd-bf79-da83d7fb4e09"
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "diagnostizierte Depressionen, Angststörungen, andere psychiatrische Erkrankungen"
* characteristic[=].exclude = true
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "Einnahme von Antidepressiva, Opioiden, Antikonvulsiva"
* characteristic[=].exclude = true
* characteristic[+]
  * definitionCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
  * description = "weitere neurologische Erkrankungen"
* characteristic[=].exclude = true

// Library example
Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* status = #active
* name = "DRKS - Deutsches Register Klinischer Studien"
* identifier.value = "DRKS"
* identifier.system = "https://example.com/fhir/sid/drks"
* relatedArtifact.document.url = "https://drks.de/"
* relatedArtifact.type = #documentation

// Practioner role example
Instance:  mii-exa-studie-beteiligte-person
InstanceOf: MII_PR_Studie_Beteiligte_Person
Usage: #example
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* telecom.system = #phone
* telecom.value = "0123456789"
* organization = Reference(Organization/Example)
* practitioner = Reference(Practitioner/Example)

// Research studyexample
Instance: mii-exa-studie-cohort
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* status = #active
* title = "LIFE-Adult-Study"
* identifier.value = "7Q6PJD8NV3-2"
* identifier.system = "https://example.com/fhir/sid/lha"
* description = "Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden."
* extension[Akronym].valueString = "LIFE ADULT"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2009-01-01"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "good"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2022-05-28"

// Research subject example