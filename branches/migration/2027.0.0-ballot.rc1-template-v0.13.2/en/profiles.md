# Profiles - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

### FHIR Profiles

The work on the core data set specifications is based, wherever possible, on international standards and terminologies. In particular, the [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) should be highlighted here. Adaptation to the general conditions of the German healthcare system is achieved through the use of the [German base profiles](https://ig.fhir.de/basisprofile-de/stable/Home.html) from HL7 Germany.

All elements of the core data set, adapted to the details and requirements for the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The necessity of adapting the FHIR profiles is explained in textual form below the respective profiles.

### Mandatory / must-support Elements

| | |
| :--- | :--- |
| ![](Warning.jpg) | For mandatory or must-support marked elements, reference is made here to the corresponding[rules of the IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support), which also apply to this ImplementationGuide. |

### Organization (Organization)

-------

#### Existing Profiles Core Data Set Medical Informatics Initiative

The concept of "organization" is already defined by the core data set of the Medical Informatics Initiative in the Structural Data module. This specification is reused within the framework of this module, but has **not yet been finally balloted**.

See profile ["Profile - MI-I - Organisation - Organization"](https://simplifier.net/guide/modulstruktur-leitfaden-version1.0?version=current) - draft status.

Canonical URL: `https://www.medizininformatik-initiative.de/fhir/core/modul-strukturdaten/StructureDefinition/Organization`

#### Mapping Organization (Organization) - Study Module

-------

| | |
| :--- | :--- |
| Feedback is requested on whether this element is relevant, and how this element should be mapped | Forschungsvorhaben.Kontakt.Grad |
| Organization.contact.name.given | Forschungsvorhaben.Kontakt.Vorname |
| Organization.contact.name.family | Forschungsvorhaben.Kontakt.Nachname |
| Organization.contact.address.line + Address.line.extension:strasse | Forschungsvorhaben.Kontakt.Adresse.Strasse |
| Organization.contact.address.line+ Address.line.extension:hausnummer | Forschungsvorhaben.Kontakt.Adresse.Hausnummer |
| Organization.contact.address.postalCode | Forschungsvorhaben.Kontakt.Adresse.PLZ |
| Organization.contact.address.city | Forschungsvorhaben.Kontakt.Adresse.Wohnort |
| Organization.contact.address.country | Forschungsvorhaben.Kontakt.Adresse.Land |
| Organization.contact.telecom | Forschungsvorhaben.Kontakt.Email |
| Organization.contact.telecom | Forschungsvorhaben.Kontakt.Tel |
| Organization.name | Forschungsvorhaben.Kontakt.Zugehoerigkeit |

| | |
| :--- | :--- |
| Organization.address | Forschungsvorhaben.Standort.Adresse |
| Organization.name | Forschungsvorhaben.Standort.Name |

