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
  * definitionCodeableConcept.text = "Altersbeschränkung"
  * description = "Altersbeschränkung"
  * extension[definitionReference].valueReference = Reference(mii-exa-studie-evidence-variable-age-restriction)
* characteristic[+]
  * definitionCodeableConcept.text = "Alle"
  * description = "Geschlecht"
  * extension[definitionCanonical].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender"
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
* characteristic[+]
  * definitionCodeableConcept.text = "Mindestalter"
  * description = "Alter mindestens 18 Jahre"
  * extension[definitionByTypeAndValue]
    * extension[type].valueCodeableConcept.coding.system = "http://snomed.info/sct"
    * extension[type].valueCodeableConcept.coding.code = #424144002
    * extension[type].valueCodeableConcept.coding.display = "Current chronological age"
    * extension[value].valueQuantity.value = 18
    * extension[value].valueQuantity.comparator = #>=
    * extension[value].valueQuantity.unit = "year"
    * extension[value].valueQuantity.system = "http://unitsofmeasure.org"
    * extension[value].valueQuantity.code = #a
* characteristic[=].exclude = false

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

// Research study example
Instance: mii-exa-studie-cohort
InstanceOf: MII_PR_Studie_Studie
Usage: #example
* identifier.value = "7Q6PJD8NV3-2"
* identifier.system = "https://example.com/fhir/sid/lha"
* title = "LIFE-Adult-Study"
* partOf = Reference(mii-exa-studie-reference-study)
* status = #active
* category = ResearchStudyCategoryCS#observational
* focus.text = "Erwachsene der Stadt Leipzig"
* keyword.text = "Bevölkerung, Leipzig, Erwachsene"
* description = "Die LIFE Adult-Studie ist eine langfristig angelegte, bevölkerungsbezogene Kohortenstudie. Stichproben aus der Leipziger Erwachsenenbevölkerung werden hinsichtlich vielfältiger Merkmale und Krankheitsrisiken umfassend untersucht. Insbesondere die Häufigkeit von Volkskrankheiten steht im Mittelpunkt der Forschungsarbeiten. Der Einfluss von Lebensstil- und Umweltfaktoren auf diese Erkrankungen wird charak​terisiert. Bisher unbekannte Risikofaktoren für die Entstehung von Volkskrankheiten sollen aufgespürt und neue Möglichkeiten der Früherkennung entwickelt werden."
* arm.name = "LIFE-Adult-Kohorte"
* extension[Label].extension[value].valueString = "MII Modul Studie"
* extension[AssociatedParty].extension[role].valueCodeableConcept = AssociatedPartyRoleCS#sponsor
* extension[AssociatedParty].extension[party].valueReference = Reference(Organization/mii-exa-studie-author)
* extension[Ethikvotum].extension[status].valueString = "genehmigt"
* extension[Ethikvotum].extension[kommission].valueString = "Ethik-Kommission der Medizinischen Fakultät der Universität Leipzig"
* extension[Ethikvotum].extension[ethiknummer].valueString = "159-12-21052012"
* extension[Studienregister].valueReference = Reference(mii-exa-studie-register)
* extension[Eligibility].valueReference = Reference(mii-exa-studie-ein-auschluss-kriterium)
* extension[Akronym].valueString = "LIFE ADULT"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2009-01-01"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 10000
* extension[Rekrutierung].extension[rekrutierungsstand-genauigkeit].valueString = "good"
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2022-05-28"
* extension[Finanzierung].valueString = "Deutsches Bundesministerium für Bildung und Forschung (BMBF)"

// Research subject example
Instance: mii-exa-studie-proband
InstanceOf: MII_PR_Studie_Proband
Usage: #example
* id = "mii-exa-studie-proband"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband"
* identifier[subjectIdentificationCode].type = $v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[subjectIdentificationCode].value = "321123456"

* status = #candidate
* period.start = "2023-01-01"
* period.end = "2023-12-31"
* study = Reference(mii-exa-studie-cohort)
* individual = Reference(mii-exa-studie-patient)
* consent = Reference(mii-exa-studie-consent)

// Study inclusion example
Instance: mii-exa-studie-studieneinschluss-anfrage
InstanceOf: MII_PR_Studie_Studieneinschluss_Anfrage
Usage: #example
* id = "mii-exa-studie-studieneinschluss-anfrage"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage"
* status = #draft
* intent = #proposal
* category = $sct#110465008 "Clinical trial (procedure)"
* code = $sct#702475000 "Referral to clinical trial (procedure)"
* subject = Reference(mii-exa-studie-patient)
* supportingInfo[Studie] = Reference(mii-exa-studie-cohort)
* supportingInfo[Proband] = Reference(mii-exa-studie-proband)  

// ---------------------------------------------------------
// Reference Ressources:
// ---------------------------------------------------------

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

// Research patient example
Instance: mii-exa-studie-patient
InstanceOf: Patient
Usage: #example
Description: "Patient: Studien Patient"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* id = "mii-exa-studie-patient"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "D92345678"
* name[0].family = "Doe"
* name[0].given = "Jane"
* gender = #female
* birthDate = "1980-11-12"
* deceasedBoolean = false

// Research consent example
Instance: mii-exa-studie-consent
InstanceOf: Consent
Usage: #example
* id = "mii-exa-studie-consent"
* status = #active
* scope = #research
* category = $loinc#59284-0
* patient = Reference(mii-exa-studie-patient)
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"

// Evidence variable example
Instance: mii-exa-studie-evidence-variable-age-restriction
InstanceOf: EvidenceVariable
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

// ---------------------------------------------------------
// VS and CS for examples
// ---------------------------------------------------------

CodeSystem: ResearchStudyCategoryCS
Id: research-study-category-cs
Title: "Research Study Category Code System"
Description: "High-level categories describing the overall type of a research study."
* ^url = "http://example.org/fhir/CodeSystem/research-study-category"
* ^status = #active
* ^experimental = false
* ^content = #complete

* #interventional "Interventional study"
    "A study in which participants are assigned to receive one or more interventions so that outcomes can be evaluated."
* #observational "Observational study"
    "A study in which biomedical or health outcomes are observed in a defined population without assignment of specific interventions."
* #registry "Registry study"
    "A study primarily based on data collected in a registry (e.g. disease or quality registry)."
* #other "Other"
    "Other study category not covered by the existing codes. Use with additional descriptive text."

ValueSet: ResearchStudyCategoryVS
Id: research-study-category-vs
Title: "Research Study Category"
Description: "Value set of high-level categories describing the type of a research study."
* ^url = "http://example.org/fhir/ValueSet/research-study-category"
* ^status = #active
* ^experimental = false
* codes from system ResearchStudyCategoryCS


CodeSystem: AssociatedPartyRoleCS
Id: associated-party-role-cs
Title: "Associated Party Role Code System"
Description: "Roles that an associated party may have in relation to an entity such as a research study."
* ^url = "http://example.org/fhir/CodeSystem/associated-party-role"
* ^status = #active
* ^experimental = false
* ^content = #complete

* #sponsor "Sponsor"
    "An individual or organization that takes responsibility for the initiation, management, and financing of a study."
* #funder "Funder"
    "An entity providing financial support but not assuming overall responsibility as a sponsor."
* #principal-investigator "Principal Investigator"
    "The lead researcher responsible for the overall conduct of the study."
* #co-investigator "Co-Investigator"
    "A researcher who shares scientific responsibility with the principal investigator."
* #coordinator "Study Coordinator"
    "A person coordinating day-to-day operational activities of the study."
* #publisher "Publisher"
    "An entity responsible for publishing or disseminating results."
* #other "Other"
    "A role not covered by the defined codes."

ValueSet: AssociatedPartyRoleVS
Id: associated-party-role-vs
Title: "Associated Party Role"
Description: "Value set of roles that an associated party may have in relation to a research study."
* ^url = "http://example.org/fhir/ValueSet/associated-party-role"
* ^status = #active
* ^experimental = false
* codes from system AssociatedPartyRoleCS