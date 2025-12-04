// Document reference example
Instance:  mii-exa-studie-dokument
InstanceOf: MII_PR_Studie_Dokument
Usage: #example
* status = #current
* content.attachment.url = "https://example.com/fhir/Binary/document"
* content.attachment.title = "Beispiel Dokument"
* content.attachment.contentType = #application/pdf
* content.attachment.size = 2000
* author = Reference(Organization/mii-exa-studie-author)
* custodian = Reference(Organization/mii-exa-studie-custodian)
* context.related = Reference(ResearchStudy/mii-exa-studie-cohort)

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
// extension[definitionReference]
// extension[definitionCanonical]
// extension[definitionByTypeAndValue]

// Library example
Instance: mii-exa-studie-register
InstanceOf: MII_PR_Studie_Register
Usage: #example
* identifier.value = "DRKS"
* identifier.system = "https://example.com/fhir/sid/drks"
* name = "DRKS - Deutsches Register Klinischer Studien"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* relatedArtifact.document.url = "https://drks.de/"
* relatedArtifact.type = #documentation

// Practioner role example
Instance:  mii-exa-studie-beteiligte-person
InstanceOf: MII_PR_Studie_Beteiligte_Person
Usage: #example
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* telecom.system = #phone
* telecom.value = "0123456789"
* organization = Reference(Organization/mii-exa-studie-practitioner-organization)
* practitioner = Reference(Practitioner/mii-exa-studie-practitioner)

// Research studyexample
Instance: mii-exa-studie-cohort
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* identifier.value = "7Q6PJD8NV3-2"
* identifier.system = "https://example.com/fhir/sid/lha"
* title = "LIFE-Adult-Study"
* partOf = Reference(mii-exa-studie-reference-study) // -> reference on aonther study, so we need twi instances to cover the MS
* status = #active
* category = http://terminology.hl7.org/CodeSystem/research-study-category#observational
* focus.text = "Erwachsene der Stadt Leipzig"
* keyword.text = "Bevölkerung, Leipzig, Erwachsene"
* description = "Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden."
* arm.name = "LIFE-Adult-Kohorte"

// * extension.Label
// * extension.AssiociatedParties
// * extension.Ethikvotum
// * extension.Studienregister
// * extension.Eligibility
* extension[Akronym].valueString = "LIFE ADULT"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2009-01-01"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "good"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2022-05-28"
// * extension.Finanzierung

// Research subject example
// Instance: mii-exa-studie-proband
// InstanceOf: MII_PR_Studie_Proband
// Usage: #example
// * id
// * meta.profile
// * identifier[subjectIdentificationCode].type
// * identifier[subjectIdentificationCode].system
// * identifier[subjectIdentificationCode].value
// * statu
// * period.start
// * period.end
// * study()
// * individual()
// * consent()

//// Reference Ressources

// Author organization example
Instance: mii-exa-studie-author
InstanceOf: Organization
Usage: #example
* id = "mii-exa-studie-author"
* name = "Example Organization for Author"

// Custodian organization example
Instance: mii-exa-studie-custodian
InstanceOf: Organization
Usage: #example
* id = "mii-exa-studie-custodian"
* name = "Example Organization for Custodian"

// Practitioner organization example
Instance: mii-exa-studie-practitioner-organization
InstanceOf: Organization
Usage: #example
* id = "mii-exa-studie-practitioner-organization"
* name = "Example Organization for Practitioner"

// Practitioner example
Instance: mii-exa-studie-practitioner
InstanceOf: Practitioner
Usage: #example
* id = "mii-exa-studie-practitioner"
* name[0].family = "Mustermann"
* name[0].given = "Max"

// Reference study example
Instance: mii-exa-studie-reference-study
InstanceOf: ResearchStudy
Usage: #example
* id = "mii-exa-studie-reference-study"
* title = "Example Reference Study"
* status = #completed