Profile: MII_PR_Studie_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-studie-studieneinschluss-anfrage
Title: "MII PR Studie Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"
* insert PR_CS_VS_Version
* insert Publisher

* subject 1..1 MS
* subject only Reference(Patient)

* status MS
* status ^short = "Entwurf | aktiv | pausiert | widerrufen | abgeschlossen | irrtümlich erstellt | unbekannt"
* insert Translation(status ^short, de, Entwurf | aktiv | pausiert | widerrufen | abgeschlossen | irrtümlich erstellt | unbekannt)
* insert Translation(status ^short, en, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* status ^definition = "Der Status der Anfrage"
* insert Translation(status ^definition, de, Der Status der Anfrage.)
* insert Translation(status ^definition, en, The status of the order.)
* intent MS
* intent ^short = "Vorschlag | Plan | Direktive | Auftrag | Originalauftrag | Reflexauftrag | Füllerauftrag | Instanzauftrag | Option "
* insert Translation(intent ^short, de, Vorschlag | Plan | Direktive | Auftrag | Originalauftrag | Reflexauftrag | Füllerauftrag | Instanzauftrag | Option )
* insert Translation(intent ^short, en, proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option )
* intent ^definition = "Ob die Anfrage ein Vorschlag, ein Plan, ein Originalauftrag oder ein Reflexauftrag ist."
* insert Translation(intent ^definition, de, Ob die Anfrage ein Vorschlag, ein Plan, ein Originalauftrag oder ein Reflexauftrag ist.)
* insert Translation(intent ^definition, en, Whether the request is a proposal, plan, an original order or a reflex order.)
* intent = #proposal

* category 1..* MS
* category ^short = "Klassifikation des Dienstes."
* insert Translation(category ^short, de, Klassifikation des Dienstes.)
* insert Translation(category ^short, en, Classification of service.)
* category ^definition = "Ein Code, der den Dienst für Such-, Sortier- und Anzeigezwecke klassifiziert (z.B. \"Chirurgischer Eingriff\")."
* insert Translation(category ^definition, de, Ein Code\, der den Dienst für Such-, Sortier- und Anzeigezwecke klassifiziert (z.B. "Chirurgischer Eingriff").)
* insert Translation(category ^definition, en, A code that classifies the service for searching, sorting and display purposes (e.g. "Surgical Procedure").)
* category = $SCT#110465008 "Clinical trial (procedure)"

* code 1..1 MS
* code ^short = "Was angefordert/bestellt wird."
* insert Translation(code ^short, de, Was angefordert/bestellt wird.)
* insert Translation(code ^short, en,  What is being requested/ordered.)
* code ^definition = "Ein Code, der einen bestimmten angeforderten Dienst identifiziert."
* insert Translation(code ^definition, de, Ein Code\, der einen bestimmten angeforderten Dienst identifiziert.)
* insert Translation(code ^definition, en, A code that identifies a particular service that have been requested.)
* code = $SCT#702475000 "Referral to clinical trial (procedure)"

* reasonReference 0..*
* reasonReference ^short = "Erklärung/Begründung für Dienst oder Leistung."
* insert Translation(reasonReference ^short, de, Erklärung/Begründung für Dienst oder Leistung.)
* insert Translation(reasonReference ^short, en, Explanation/Justification for service or service.)
* reasonReference ^definition = "Gibt eine andere Ressource an, die eine Begründung dafür liefert, warum dieser Dienst angefordert wird. Kann sich auf die in supportingInfo genannten Ressourcen beziehen."
* insert Translation(reasonReference ^definition, de, Gibt eine andere Ressource an, die eine Begründung dafür liefert, warum dieser Dienst angefordert wird. Kann sich auf die in supportingInfo genannten Ressourcen beziehen.)
* insert Translation(reasonReference ^definition, en, Indicates another resource that provides a justification for why this service is being requested. May relate to the resources referred to in supportingInfo.)

* supportingInfo 0..* MS
* supportingInfo ^short = "Zusätzliche klinische Informationen"
* insert Translation(supportingInfo ^short, de, Zusätzliche klinische Informationen)
* insert Translation(supportingInfo ^short, en, Additional clinical information)
* supportingInfo ^definition = "Zusätzliche klinische Informationen über den Patienten oder die Probe, die die Dienstleistungen oder deren Interpretationen beeinflussen können."
* insert Translation(supportingInfo ^definition, de, Zusätzliche klinische Informationen über den Patienten oder die Probe, die die Dienstleistungen oder deren Interpretationen beeinflussen können.)
* insert Translation(supportingInfo ^definition, en, Additional clinical information about the patient or specimen that may influence the services or their interpretations.)
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open

* supportingInfo contains 
    Studie 0..* MS and
    Proband 0..1 MS

* supportingInfo[Studie] only Reference(MII_PR_Studie_Studie or ResearchStudy)
* supportingInfo[Proband] only Reference(MII_PR_Studie_Proband or ResearchSubject)