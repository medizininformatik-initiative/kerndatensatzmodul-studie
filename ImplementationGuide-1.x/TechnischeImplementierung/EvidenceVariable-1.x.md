## Ein- und Ausschlusskriterium (EvidenceVariable)

---

**Beschreibung**

Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| EvidenceVariable.id      | Must-support, jedoch optional        |
| EvidenceVariable.meta       | Must-support, jedoch optional         |
| EvidenceVariable.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repsoitory inkl. Versionsnummer des Profils. Siehe {{pagelink:ImplementationGuide-1.x/TechnischeImplementierung/CapabilityStatement-1.x.md}}. In allen anderen Fällen optional.         |
|EvidenceVariable.characteristic.description|Textuelle Beschreibung dess Kriteriums|
|EvidenceVariable.characteristic.definition[x]| In den dazugehöirgen Backport-Extensions aus FHIR R5 sind weitere Datentypen als in FHIR R4 erlaubt. Sollte z.B. die Extension definitionByCombination oder definitionByTypeAndValue verwendet werden, so muss definitionCodeableConcept mit dem Data-Absent-Reason Code "unknown" befüllt werden, sodass die Kardinalität von 1..1 erfüllt bleibt.|
|EvidenceVariable.characteristic.exclude|Boolisches Element welches definiert, ob es sich um ein Einschluss- oder Ausschlusskriterium handelt|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Kriterium|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Operator|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Masseinheit|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Wert|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Kriterium|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Operator|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Masseinheit|
|EvidenceVariable.characteristic.extension:definitionByTypeAndValue|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Wert|

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "EvidenceVariable.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "characteristicDescription" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/EvidenceVariable?characteristicDescription=Höchstalter```

    Anwendungshinweise: Weitere Informationen zur Suche nach "EvidenceVariable.characteristic.description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.json}}