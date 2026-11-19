
Profile: MII_PR_Studie_Rolle_Beteiligte_Person
Title: "MII PR Studie Rolle beteiligte Person"
Parent: PractitionerRole
Id: mii-pr-studie-beteiligte-person
Description: "Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person, z. B. die Studienleitung, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative."
* insert Translation(^title, de, MII PR Studie Rolle beteiligte Person)
* insert Translation(^title, en, MII PR Study Involved Person Role)
* insert Translation(^description, de, Dieses Profil beschreibt die Rolle einer an einer Studie beteiligten Person\, z. B. die Studienleitung\, einschließlich der zugehörigen Organisation und Kontaktdaten in der Medizininformatik-Initiative.)
* insert Translation(^description, en, This profile describes the role of a person involved in a study\, e.g. the study lead\, including the associated organization and contact details in the Medical Informatics Initiative.)
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIVersionPolicyStrict
* insert CRMIPackageSourceDefinitionalResource
* insert CRMIArtifactUsageProfile
* insert CRMIApprovalDate(2026-01-09)
* insert CRMIResourceEffectivePeriod
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C15206)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C15429)
* insert CRMIArtifactContributors
* ^experimental = false
* ^date = "2026-01-09"
* code ^short = "Berufliche Rolle in der Organisation, nicht die Rolle in der Studie."
* insert Translation(code ^short, de, Berufliche Rolle in der Organisation\, nicht die Rolle in der Studie.)
* insert Translation(code ^short, en, Professional role within the organization\, not the role in the study.)
* code ^definition = "Rollen, die dieser Praktiker für die Organisation ausüben darf."
* insert Translation(code ^definition, de, Rollen\, die dieser Praktiker für die Organisation ausüben darf.)
* insert Translation(code ^definition, en, Roles which this practitioner is authorized to perform for the organization.)
* code ^comment = "Die Rolle der Person in einer bestimmten Studie wird nicht hier angegeben, sondern in ResearchStudy.extension:AssociatedParty.extension:role. Für die Studienleitung wird ResearchStudy.principalInvestigator verwendet."
* insert Translation(code ^comment, de, Die Rolle der Person in einer bestimmten Studie wird nicht hier angegeben\, sondern in ResearchStudy.extension:AssociatedParty.extension:role. Für die Studienleitung wird ResearchStudy.principalInvestigator verwendet.)
* insert Translation(code ^comment, en, The role of the person in a specific study is not given here but in ResearchStudy.extension:AssociatedParty.extension:role. For the study lead\, ResearchStudy.principalInvestigator is used.)
* telecom MS
* telecom ^short = "Kontaktdaten, die spezifisch für die Rolle/den Standort/die Dienstleistung sind."
* insert Translation(telecom ^short, de, Kontaktdaten\, die spezifisch für die Rolle/den Standort/die Dienstleistung sind.)
* insert Translation(telecom ^short, en, Contact details that are specific to the role/location/service.)
* telecom ^definition = "Kontaktdaten, die spezifisch für die Rolle, den Standort oder die Dienstleistung sind."
* insert Translation(telecom ^definition, de, Kontaktdaten\, die spezifisch für die Rolle\, den Standort oder die Dienstleistung sind.)
* insert Translation(telecom ^definition, en, Contact details that are specific to the role/location/service.)
* organization MS
* organization ^short = "Organisation, in der die Rollen verfügbar sind."
* insert Translation(organization ^short, de, Organisation\, in der die Rollen verfügbar sind.)
* insert Translation(organization ^short, en, Organization where the roles are available.)
* organization ^definition = "Die Organisation, in der der Praktiker die zugeordneten Rollen ausübt."
* insert Translation(organization ^definition, de, Die Organisation\, in der der Praktiker die zugeordneten Rollen ausübt.)
* insert Translation(organization ^definition, en, The organization where the Practitioner performs the roles associated.)
* practitioner MS
* practitioner ^short = "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
* insert Translation(practitioner ^short, de, Praktiker\, der in der Lage ist\, die definierten Dienstleistungen für die Organisation bereitzustellen.)
* insert Translation(practitioner ^short, en, Practitioner that is able to provide the defined services for the organization.)
* practitioner ^definition = "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
* insert Translation(practitioner ^definition, de, Praktiker\, der in der Lage ist\, die definierten Dienstleistungen für die Organisation bereitzustellen.)
* insert Translation(practitioner ^definition, en, Practitioner that is able to provide the defined services for the organization.)
* practitioner ^comment = "Name, akademischer Grad und weitere personenbezogene Angaben der beteiligten Person werden im referenzierten Practitioner abgebildet: Vor- und Nachname in Practitioner.name.given und .family, der akademische Grad in Practitioner.name.prefix. Ein eigenes MII-Profil für Practitioner ist nicht vorgesehen."
* insert Translation(practitioner ^comment, de, Name\, akademischer Grad und weitere personenbezogene Angaben der beteiligten Person werden im referenzierten Practitioner abgebildet: Vor- und Nachname in Practitioner.name.given und .family\, der akademische Grad in Practitioner.name.prefix. Ein eigenes MII-Profil für Practitioner ist nicht vorgesehen.)
* insert Translation(practitioner ^comment, en, Name\, academic degree and further personal details of the involved person are represented in the referenced Practitioner: given and family name in Practitioner.name.given and .family\, the academic degree in Practitioner.name.prefix. A dedicated MII profile for Practitioner is not provided.)

