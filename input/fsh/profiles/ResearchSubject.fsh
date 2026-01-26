Profile: MII_PR_Studie_Proband
Parent: ResearchSubject
Id: mii-pr-studie-proband
Title: "MII PR Studie Proband"
Description: "Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband"
* insert Translation(^title, de, MII PR Studie Proband)
* insert Translation(^title, en, MII PR Study Subject)
* insert Translation(^description, de, Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative.)
* insert Translation(^description, en, This profile describes a study subject within the Medical Informatics Initiative.)
* insert PR_CS_VS_Version
* insert Publisher
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^short = "Identifier des Probanden"
* insert Translation(identifier ^short, de, Identifier des Probanden.)
* insert Translation(identifier ^short, en, Business Identifier for study subject.)
* identifier ^definition = "Kennungen, die dem Probanden zugewiesen wurden."
* insert Translation(identifier ^definition, de, Kennungen\, die dem Probanden vom Sponsor oder anderen Systemen zugewiesen wurden.)
* insert Translation(identifier ^definition, en, Identifiers assigned to this study subject by the sponsor or other systems.)
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains subjectIdentificationCode 1..1 MS
* identifier[subjectIdentificationCode] ^patternIdentifier.type = $v2-0203#ANON
* identifier[subjectIdentificationCode].type MS
* identifier[subjectIdentificationCode].system 1.. MS
* identifier[subjectIdentificationCode].value 1.. MS
* status MS
* status ^short = "Kandidat | geeignet | Nachverfolgung | ungeeignet | nicht registriert | außer Studie | in Studie | Studienintervention in Studie | Studienbeobachtung in Studie | ausstehend in Studie | potenzieller Kandidat | Screening | zurückgezogen"
* insert Translation(status ^short, de, Kandidat | geeignet | Nachverfolgung | ungeeignet | nicht registriert | außer Studie | in Studie | Studienintervention in Studie | Studienbeobachtung in Studie | ausstehend in Studie | potenzieller Kandidat | Screening | zurückgezogen)
* insert Translation(status ^short, en, candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawn)
* status ^definition = "Status der Teilnahme"
* insert Translation(status ^definition, de, Status der Teilnahme.)
* insert Translation(status ^definition, en, The current state of the study participation.)
* period 1.. MS
* period ^short = "Anfang und Ende der Teilnahme"
* insert Translation(period ^short, de, Anfang und Ende der Teilnahme)
* insert Translation(period ^short, en, Start and end of participation.)
* period ^definition = "Zeitrum, in denen die Teilnahme an der Studie begann und endete."
* insert Translation(period ^definition, de, Zeitraum, in dem die Teilnahme an der Studie begann und endete.)
* insert Translation(period ^definition, en, The dates the subject began and ended their participation in the study.)
* period.start 1.. MS
* period.end MS
* study MS
* study ^short = "Studie, der der Proband angehört"
* insert Translation(study ^short, de, Studie/, der der Proband angehört)
* insert Translation(study ^short, en, study subject is part of)
* study ^definition = "Referenz auf die Studie, an der der Proband teilnimmt"
* insert Translation(study ^definition, de, Referenz auf die Studie/, an der der Proband teilnimmt.)
* insert Translation(study ^definition, en, Reference to the study the subject is participating in.)
* individual 1.. MS
* individual ^short = "Wer an der Studie teilnimmt."
* insert Translation(individual ^short, de, Wer an der Studie teilnimmt.)
* insert Translation(individual ^short, en, Who is part of study.)
* individual ^definition = "Der Datensatz der Person oder des Tieres, das an der Studie beteiligt ist."
* insert Translation(individual ^definition, de, Der Datensatz der Person oder des Tieres, das an der Studie beteiligt ist.)
* insert Translation(individual ^definition, en, The record of the person or animal who is involved in the study.)
* consent 1.. MS
* consent ^short = "Einverständnis zur Studienteilnahme"
* insert Translation(consent ^short, de, Einverständnis zur Studienteilnahme)
* insert Translation(consent ^short, en, Agreement to participate in study)
* consent ^definition = "Ein Datensatz der informierten Zustimmung des Patienten zur Teilnahme an der Studie."
* insert Translation(consent ^definition, de, Ein Datensatz der informierten Zustimmung des Patienten zur Teilnahme an der Studie.)
* insert Translation(consent ^definition, en, A record of the patient's informed agreement to participate in the study.)