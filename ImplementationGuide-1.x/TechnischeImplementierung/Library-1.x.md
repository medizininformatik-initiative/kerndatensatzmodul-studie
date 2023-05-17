## Register (Library)

---

**Beschreibung**

Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Library.name | Es sollte ein geeigneter menschenlesbarer Name verwendet werden |
| Library.identifier | In den meisten Fällen existiert bisher kein NamingSystem für die Vergabe der RegisterIds. Ein eigenes lokales NamingSystem sollte daher verwendet werden. |
| Library.relatedArtifact.document.url | Homepage des Regsiters bzw. Link zur weiterführenden Dokumentation |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Studienregister.url |
| Library.extension:quellRegister |  Forschungsvorhaben.Studienregister.IstQuellRegister |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Library?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Library?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "name" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Library?name=DRKS - Deutsches Register Klinischer Studien```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?identifier=DRKS```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/Library-mii-exa-studie-register.json}}