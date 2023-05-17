## Beteiligte Person (PractitionerRole)

---

**Beschreibung**

Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| PractitionerRole.id      | Must-support, jedoch optional        |
| PractitionerRole.meta       | Must-support, jedoch optional         |
| PractitionerRole.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repsoitory inkl. Versionsnummer des Profils. Siehe {{pagelink:ImplementationGuide-1.x/TechnischeImplementierung/CapabilityStatement.md}}. In allen anderen Fällen optional.         |
| PractitionerRole.code      | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |
| PractitionerRole.telecom      | Es ist drauf zu achten, dass hier nur Informationen exponiert werden, die bereits durch die Studie ansich veröffentlicht wurden |
| PractitionerRole.organization | Um alle zu einer Studie zugehörigen Personen zu finden ist die Verwendung von Referenz.reference anstelle von Referent.identifier zu bevorzugen.|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Beteiligter.Rolle |
| PractitionerRole.telecom |  Forschungsvorhaben.Beteiligter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Beteiligter.Standort |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| PractitionerRole.code |  Forschungsvorhaben.Studienleiter |
| PractitionerRole.telecom |  Forschungsvorhaben.Studienleiter.Kontakt |
| PractitionerRole.organization |  Forschungsvorhaben.Studienleiter.Standort |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/PractitionerRole?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/PractitionerRole?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-BeteiligtePerson```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "practitioner" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/PractitionerRole?practitioner=Practitioner/practitioner-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "PractitionerRole.practitioner" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "organization" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/PractitionerRole?organization=Organization/organization-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "PractitionerRole.organization" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "role" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/PractitionerRole?role=http://example.org/fhir/CodeSystem/RolleBeteiligtePerson|studienleiter```

    Anwendungshinweise: Weitere Informationen zur Suche nach "PractitionerRole.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "telecom" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/PractitionerRole?telecom=phone|+4915232584956```

    Anwendungshinweise: Weitere Informationen zur Suche nach "PractitionerRole.telecom" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#token).

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/PractitionerRole-mii-exa-studie-beteiligte-person.json}}