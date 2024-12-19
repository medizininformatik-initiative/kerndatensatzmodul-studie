## Dokument (DocumentReference)

---

**Beschreibung**

Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| DocumentReference.id      | Must-support, jedoch optional        |
| DocumentReference.meta       | Must-support, jedoch optional         |
| DocumentReference.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe {{pagelink:ImplementationGuide-1.x/TechnischeImplementierung/CapabilityStatement-1.x.md}}. In allen anderen Fällen optional.         |
| DocumentReference.content.attachment.url | Diese absolute URL sollte auf einen Binary-Endpunkt eines FHIR-Servers verweisen. Die Hinweise der FHIR-Kernspezifikation zum [Abruf von Binary-Ressourcen](https://www.hl7.org/fhir/r4/binary.html#rest) sind zu beachten. |
| DocumentReference.content.attachment.title       | Der Titel sollte eine sinnvolle menschenlesbare Beschreibung enthalten, das Element sollte nicht für den Dateinamen verwendet werden. |
| DocumentReference.custodian     | Sollte der Standort nicht als Organization-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
| DocumentReference.author     | Sollte der Author nicht als Practitioner-Ressource verfügbar sein, kann auch ggf. Reference.display oder Referenz.identifier verwendet werden. |
|DocumentReference.context.related|Angabe des Studienkontexts|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Publikation.Titel |
| DocumentReference.author |  Forschungsvorhaben.Publikation.Autor |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.author |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "author" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?author=Practitioner/practitioner-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.author" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


1. Der Suchparameter "custodian" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?custodian=Organization/organization-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.custodian" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?status=current```

    Anwendungshinweise: Weitere Informationen zur Suche nach "PractitionerRole.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "location" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?location=https://example.com/fhir/Binary/document```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.content.attachment.url" finden sich in der [FHIR-Basisspezifikation - Abschnitt "uri"](https://www.hl7.org/fhir/r4/search.html#uri).

1. Der Suchparameter "contenttype" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/DocumentReference?contenttype=application/pdf```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.content.attachment.contentType" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://www.hl7.org/fhir/r4/search.html#token).

1. Der Suchparameter "title" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?title=Beispiel Dokument```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.content.attachment.title" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter "size" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?size=1000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.content.attachment.size" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Number Search"](http://hl7.org/fhir/R4/search.html#number).

1. Der Suchparameter "related" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?related=ResearchStudy/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "DocumentReference.context.related" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/DocumentReference-mii-exa-studie-dokument.json}}