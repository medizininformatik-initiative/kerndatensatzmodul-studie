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

---

**Beispiele**

Beispiel (minimal):

{{json:fsh-generated/resources/ResearchStudy-mii-exa-studie-ein-auschluss-kriterium.json}}