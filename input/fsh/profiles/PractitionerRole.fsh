Profile: MII_PR_Studie_Beteiligte_Person
Title: "MII PR Studie Beteiligte Person"
Parent: PractitionerRole
Id: mii-pr-studie-beteiligte-person
* insert addMetadata
* code MS
* telecom MS
* organization MS
* practitioner MS

Instance:  mii-exa-studie-beteiligte-person
InstanceOf: MII_PR_Studie_Beteiligte_Person
Usage: #example
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* telecom.system = #phone
* telecom.value = "0123456789"
* organization = Reference(Organization/Example)
* practitioner = Reference(Practitioner/Example)