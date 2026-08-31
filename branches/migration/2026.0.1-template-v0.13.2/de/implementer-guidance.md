# Anleitung für Implementierende - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

Technische Hinweise für DIZ-Implementierende zur Umsetzung der Profile des Moduls **Medizinisches Forschungsvorhaben** (ETL aus Primärsystemen, FHIR-API, Validierung).

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

#### Relation zum Modul PERSON

Eine minimale Version des Probanden war zuvor im Modul PERSON der MII abgebildet und wurde mit diesem Release in das Modul Medizinisches Forschungsvorhaben verschoben.

#### Relation zum Modul CONSENT

Das Modul CONSENT beschreibt Einwilligungserklärungen von aufgeklärten Patienten/Probanden sowie Policies zur Durchsetzung abgestufter Nutzungsvarianten. Dabei wird dort auf Forschungsvorhaben Bezug genommen, für welche ein solcher Consent gelten soll.

#### Relation zum Modul STRUKTURDATEN

Das in Erarbeitung befindliche Modul STRUKTURDATEN beschreibt Organisationsstrukturen, Standorte und einzelne Leistungsdaten von Organisationseinheiten in den Krankenhäusern der MII. Das Modul selbst hat keinen direkten Bezug zu Forschungsvorhaben, wird jedoch von diesem benutzt. Es sind aktuell keine modellierungstechnischen Konflikte absehbar.

#### Relation zu anderen Modulen

In der Modulbeschreibung zur Charakterisierung des Moduls medizinisches Forschungsvorhaben (siehe Beschluss der AG Interoperabilität vom 17.03.2021) werden Abhängigkeiten von/zu weiteren Modulen erwähnt. Diese beziehen sich auf mögliche Abhängigkeiten in zukünftigen, inhaltlich erweiterten Versionen dieses Moduls und werden gegenwärtig nicht adressiert: **1.** Das hier vorliegende Informationsmodell beschäftigt sich aktuell nicht mit der Abbildung einzelner klinischer Parameter, wie sie bspw. In CRF-Bögen erhoben werden. **2.** Das hier vorliegende Informationsmodell benutzt aktuell keine erweiterten Metadaten zu Provenance oder Qualität. Weitere Abhängigkeiten zu anderen Modulen sind dem Team nicht bekannt.

### Referenzen

Die vorliegende Version wurde zusammen mit Vertretern des [Deutschen Forschungsdatenportals Gesundheit](https://forschen-fuer-gesundheit.de/) (FDPG) diskutiert. Der vorliegende Entwurf wurde zusammen mit Vertretern der [Nationalen Forschungsdateninfrastruktur für personenbezogene Gesundheitsdaten](https://www.nfdi4health.de/) (NFDI4Health) diskutiert. Der vorliegende Entwurf wurde zusammen mit Vertretern aus anderen öffentlich geförderten Netzwerken und Industriepartnern erstellt. Es wurde auf die sich daraus möglicherweise ergebenden Interessenkonflikte geachtet.

