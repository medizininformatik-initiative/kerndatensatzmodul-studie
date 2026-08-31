# CapabilityStatements - MII Implementation Guide Medizinisches Forschungsvorhaben v2026.0.1

* [**Table of Contents**](toc.md)
* **CapabilityStatements**

## CapabilityStatements

Die CapabilityStatements des Moduls **Medizinisches Forschungsvorhaben** beschreiben die erwarteten Server-/Client-Fähigkeiten (unterstützte Ressourcen und Interaktionen).

### CapabilityStatement

Um eine dezentrale Datenauswertung mittel des Deutsche Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/http.html#capabilities) unterstützt werden, sodass durch durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden, welche Profile inkl. Version, sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/modul-studie/CapabilityStatement/metadata`

[CapabilityStatement-Artefaktseite](CapabilityStatement-MII-CPS-Metadata-Studie.md)

