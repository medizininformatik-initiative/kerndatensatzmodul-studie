Profile: MII_Organisation
Parent: Organization
Id: MII-Organisation
* contact MS
  * name MS 
    * given MS
    * family MS
  * address MS
    * line MS
      * extension MS
      * extension contains http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName named Strasse 0..1 MS
      * extension contains http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber named Hausnummer 0..1 MS
    * postalCode MS
    * city MS
    * country MS
  * telecom MS
* address MS

Instance: MII-Organisation-Example
InstanceOf: MII_Organisation
Usage: #example
* contact.name.given = "Tino"
* contact.name.family = "Zähle"
* contact.address.line = "Leipziger Straße 44 Haus 60b"
* contact.address.postalCode = "39120"
* contact.address.city = "Magdeburg"
* contact.address.country = "DE"
* contact.telecom.value = "0391 67 21683"
* contact.telecom.system = #phone
* address.line = "Leipziger Straße 44 Haus 60b"
* address.postalCode = "39120"
* address.city = "Magdeburg"
* address.country = "DE"