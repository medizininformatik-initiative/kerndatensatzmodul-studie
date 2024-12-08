Profile: MII_PR_Studie_Beteiligte_Person
Title: "MII PR Studie Beteiligte Person"
Parent: PractitionerRole
Id: mii-pr-studie-beteiligte-person
Description: "Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative."
* insert Translation(^title, de-DE, MII PR Studie Beteiligte Person)
* insert Translation(^title, en-US, MII PR Study Participant)
* insert Translation(^description, de-DE, Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative.)
* insert Translation(^description, en-US, This profile describes a participant within a study in the Medical Informatics Initiative.)
* insert addMetadata
* insert PR_CS_VS_Version
* insert Publisher
* code MS
* code ^short = "Rollen, die dieser Praktiker ausüben kann."
* insert Translation(code ^short, de-DE, Rollen\, die dieser Praktiker ausüben kann.)
* insert Translation(code ^short, en-US, Roles which this practitioner may perform.)
* code ^definition = "Rollen, die dieser Praktiker für die Organisation ausüben darf."
* insert Translation(code ^definition, de-DE, Rollen\, die dieser Praktiker für die Organisation ausüben darf.)
* insert Translation(code ^definition, en-US, Roles which this practitioner is authorized to perform for the organization.)
* telecom MS
* telecom ^short = "Kontaktdaten, die spezifisch für die Rolle/den Standort/die Dienstleistung sind."
* insert Translation(telecom ^short, de-DE, Kontaktdaten\, die spezifisch für die Rolle/den Standort/die Dienstleistung sind.)
* insert Translation(telecom ^short, en-US, Contact details that are specific to the role/location/service.)
* telecom ^definition = "Kontaktdaten, die spezifisch für die Rolle, den Standort oder die Dienstleistung sind."
* insert Translation(telecom ^definition, de-DE, Kontaktdaten\, die spezifisch für die Rolle\, den Standort oder die Dienstleistung sind.)
* insert Translation(telecom ^definition, en-US, Contact details that are specific to the role/location/service.)
* organization MS
* organization ^short = "Organisation, in der die Rollen verfügbar sind."
* insert Translation(organization ^short, de-DE, Organisation\, in der die Rollen verfügbar sind.)
* insert Translation(organization ^short, en-US, Organization where the roles are available.)
* organization ^definition = "Die Organisation, in der der Praktiker die zugeordneten Rollen ausübt."
* insert Translation(organization ^definition, de-DE, Die Organisation\, in der der Praktiker die zugeordneten Rollen ausübt.)
* insert Translation(organization ^definition, en-US, The organization where the Practitioner performs the roles associated.)
* practitioner MS
* practitioner ^short = "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
* insert Translation(practitioner ^short, de-DE, Praktiker\, der in der Lage ist\, die definierten Dienstleistungen für die Organisation bereitzustellen.)
* insert Translation(practitioner ^short, en-US, Practitioner that is able to provide the defined services for the organization.)
* practitioner ^definition = "Praktiker, der in der Lage ist, die definierten Dienstleistungen für die Organisation bereitzustellen."
* insert Translation(practitioner ^definition, de-DE, Praktiker\, der in der Lage ist\, die definierten Dienstleistungen für die Organisation bereitzustellen.)
* insert Translation(practitioner ^definition, en-US, Practitioner that is able to provide the defined services for the organization.)

Instance:  mii-exa-studie-beteiligte-person
InstanceOf: MII_PR_Studie_Beteiligte_Person
Usage: #example
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* telecom.system = #phone
* telecom.value = "0123456789"
* organization = Reference(Organization/Example)
* practitioner = Reference(Practitioner/Example)