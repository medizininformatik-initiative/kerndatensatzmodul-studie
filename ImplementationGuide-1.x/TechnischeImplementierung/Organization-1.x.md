## Organisation (Organization)

---

### Bestehende Profile Kerndatensatz Medizininformatik-Initiative

Durch den Kerndatensatz der Medizininformatik Initative wird bereits das Konzept der "Organisation" im Modul Strukturdaten definiert. Diese Spezifikation wird im Rahmen dieses Moduls wiederverwendet.

Siehe Profil ["Profile - MI-I - Organisation - Organization"](TODO).

Canonical URL: ``https://www.medizininformatik-initiative.de/fhir/core/modul-strukturdaten/StructureDefinition/Organization``

Es ist zu beachten, dass alle weiteren Vorgaben und Pflichtfelder des Kerndatensatzmoduls einzuhalten sind. Weitere Informationen finden sich im Abschnitt des [ImplementationGuides - Modul Strukturdaten](TODO).

---

### Abbildung Organisation (Organization) - Modul Studie

---

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
|  |  Forschungsvorhaben.Kontakt.Grad |
| Organization.contact.name.given |  Forschungsvorhaben.Kontakt.Vorname |
| Organization.contact.name.family |  Forschungsvorhaben.Kontakt.Nachname  |
| Organization.contact.address.line + Address.line.extension:strasse |  Forschungsvorhaben.Kontakt.Adresse.Strasse |
| Organization.contact.address.line+ Address.line.extension:hausnummer  |  Forschungsvorhaben.Kontakt.Adresse.Hausnummer  |
| Organization.contact.address.postalCode |  Forschungsvorhaben.Kontakt.Adresse.PLZ |
| Organization.contact.address.city |  Forschungsvorhaben.Kontakt.Adresse.Wohnort  |
| Organization.contact.address.country |  Forschungsvorhaben.Kontakt.Adresse.Land|
| Organization.contact.telecom | Forschungsvorhaben.Kontakt.Email  |
| Organization.contact.telecom | Forschungsvorhaben.Kontakt.Tel  |
| Organization.name | Forschungsvorhaben.Kontakt.Zugehoerigkeit |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| Organization.address | Forschungsvorhaben.Standort.Adresse  |
| Organization.name | Forschungsvorhaben.Standort.Name |

---

**Beispiele**
