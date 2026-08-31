# Profile - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profile**

## Profile

### FHIR-Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile](https://ig.fhir.de/basisprofile-de/stable/Home.html) von HL7 Deutschland.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Verpflichtende / must-support Elemente

| | |
| :--- | :--- |
| ![](Warning.jpg) | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden[Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support)verwiesen, die auch für diesen ImplementationGuide gelten. |

### Organisation (Organization)

-------

#### Bestehende Profile Kerndatensatz Medizininformatik-Initiative

Durch den Kerndatensatz der Medizininformatik Initative wird bereits das Konzept der "Organisation" im Modul Strukturdaten definiert. Diese Spezifikation wird im Rahmen dieses Moduls wiederverwendet, ist aber **noch nicht final ballotiert**.

Siehe Profil ["Profile - MI-I - Organisation - Organization"](https://simplifier.net/guide/modulstruktur-leitfaden-version1.0?version=current) - Entwurfsstand.

Canonical URL: `https://www.medizininformatik-initiative.de/fhir/core/modul-strukturdaten/StructureDefinition/Organization`

#### Abbildung Organisation (Organization) - Modul Studie

-------

| | |
| :--- | :--- |
| Es wird um Feedback gebeten, ob dieses Element relevant ist, sowie wie dieses Element abgebildet werden soll | Forschungsvorhaben.Kontakt.Grad |
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

