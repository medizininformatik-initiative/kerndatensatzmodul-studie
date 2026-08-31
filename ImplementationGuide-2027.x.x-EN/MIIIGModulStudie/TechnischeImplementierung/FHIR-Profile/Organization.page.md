## Organization (Organization)

---

### Existing Profiles Core Data Set Medical Informatics Initiative

The concept of "organization" is already defined by the core data set of the Medical Informatics Initiative in the Structural Data module. This specification is reused within the framework of this module, but has **not yet been finally balloted**.

See profile ["Profile - MI-I - Organisation - Organization"](https://simplifier.net/guide/modulstruktur-leitfaden-version1.0?version=current) - draft status.

Canonical URL: ``https://www.medizininformatik-initiative.de/fhir/core/modul-strukturdaten/StructureDefinition/Organization``

<!---
Please note that all further specifications and mandatory fields of the core data set module must be observed. Further information can be found in the section of the [ImplementationGuide - Structural Data Module](https://simplifier.net/guide/modulstruktur-leitfaden-version1.0?version=current).

---
-->

### Mapping Organization (Organization) - Study Module

---

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| Feedback is requested on whether this element is relevant, and how this element should be mapped |  Forschungsvorhaben.Kontakt.Grad |
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

| FHIR Element | Logical Data Set |
|--------------|---------------------|
| Organization.address | Forschungsvorhaben.Standort.Adresse  |
| Organization.name | Forschungsvorhaben.Standort.Name |
