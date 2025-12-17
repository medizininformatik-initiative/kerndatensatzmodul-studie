Profile: MII_PR_Studie_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-studie-studieneinschluss-anfrage
Title: "MII PR Studie Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"

* subject 1..1 MS
* subject only Reference(Patient)

* status MS

* intent MS
* intent = #proposal

* category 1..* MS
* category = $sct#110465008 "Clinical trial (procedure)"

* code 1..1 MS
* code = $sct#702475000 "Referral to clinical trial (procedure)"

* reasonReference 0..*

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains 
    Studie 0..* MS and
    Proband 0..1 MS

* supportingInfo[Studie] only Reference(MII_PR_Studie_Studie or ResearchStudy)
* supportingInfo[Proband] only Reference(MII_PR_Studie_Proband or ResearchSubject)