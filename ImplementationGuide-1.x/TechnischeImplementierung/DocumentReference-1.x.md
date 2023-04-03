## Dokument (DocumentReference)

---

**Beschreibung**

Dieses Profil beschreibt ein Dokument / Publikation in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Dokument' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Dokument, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| | |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Publikation.url |
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Publikation.Titel |
| DocumentReference.content.author |  Forschungsvorhaben.Publikation.Autor |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| DocumentReference.content.attachment.title |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Name |
| DocumentReference.content.author |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Autor |
| DocumentReference.content.attachment.contentType |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateityp |
| DocumentReference.custodian |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Standort |
| DocumentReference.content.attachment.size |  Forschungsvorhaben.Datennutzungsantrag.Dokument.Dateigroesse |
| DocumentReference.content.attachment.url |  Forschungsvorhaben.Datennutzungsantrag.Dokument.url |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Dokument, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

---

**Beispiele**