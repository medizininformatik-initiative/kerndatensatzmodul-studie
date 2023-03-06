Profile: MII_BeteiligtePerson
Parent: PractitionerRole
Id: MII-BeteiligtePerson
* code MS
* telecom MS
* organization MS

Instance: MII-BeteiligtePerson-Example
InstanceOf: MII_BeteiligtePerson
Usage: #example
* code = #doctor
* telecom.system = #phone
* telecom.value = "0123456789"
* organization = Reference(Organization/Example)