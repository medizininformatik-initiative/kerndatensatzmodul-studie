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
|EvidenceVariable.characteristic.description|Textuelle Beschreibung dess Kriteriums|
|EvidenceVariable.characteristic.exclude|Boolisches Element welches definiert, ob es sich um ein Einschluss- oder Ausschlusskriterium handelt|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Einschlusskriterien.Kriterium|
||Forschungsvorhaben.Studiendesign.Einschlusskriterien.Operator|
||Forschungsvorhaben.Studiendesign.Einschlusskriterien.Masseinheit|
||Forschungsvorhaben.Studiendesign.Einschlusskriterien.Wert|
|EvidenceVariable.characteristic.description|Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Kriterium|
||Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Operator|
||Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Masseinheit|
||Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Wert|

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

---

**Beispiele**

Beispiel (minimal):