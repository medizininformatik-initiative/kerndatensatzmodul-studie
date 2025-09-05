Profile: MII_PR_Studie_Proband
Parent: ResearchSubject
Id: mii-pr-studie-proband
Title: "MII PR Studie Proband"
Description: "Dieses Profil beschreibt eine Proband*in in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/ResearchSubject"
* insert PR_CS_VS_Version
* insert Publisher
* id MS
* meta MS
//* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains subjectIdentificationCode 1..1 MS
* identifier[subjectIdentificationCode] ^patternIdentifier.type = $v2-0203#ANON
* identifier[subjectIdentificationCode].type MS
* identifier[subjectIdentificationCode].system 1.. MS
* identifier[subjectIdentificationCode].value 1.. MS
* status MS
* period 1.. MS
* period.start 1.. MS
* period.end MS
* study MS
* individual 1.. MS
* consent 1.. MS