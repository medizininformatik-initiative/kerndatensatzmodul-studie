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
| Library.id      | Must-support, jedoch optional        |
| Library.meta       | Must-support, jedoch optional         |
| Library.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe {{pagelink:ImplementationGuide-2026.x.x/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md}}. In allen anderen Fällen optional.         |
| Library.name | Es sollte ein geeigneter menschenlesbarer Name verwendet werden |
| Library.identifier | In den meisten Fällen existiert bisher kein NamingSystem für die Vergabe der RegisterIds. Ein eigenes lokales NamingSystem sollte daher verwendet werden. |
| Library.relatedArtifact.document.url | Homepage des Registers bzw. Link zur weiterführenden Dokumentation |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Studienregister.url |

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

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Library?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "name" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Library?name=DRKS - Deutsches Register Klinischer Studien```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

4. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Library?identifier=DRKS```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "quellregister" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Library?quellregister=true```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.extension:QuellRegister" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Library?type=http://terminology.hl7.org/CodeSystem/library-type|asset-collection```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "relatedArtifactUrl" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/Library?relatedArtifactUrl=https://drks.de/```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Library.relatedArtifact.document.url" finden sich in der [FHIR-Basisspezifikation - Abschnitt "uri"](http://hl7.org/fhir/R4/search.html#uri).

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/Library-mii-exa-studie-register.json}}