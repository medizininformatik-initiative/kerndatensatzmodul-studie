## Register (Library)

---

**Beschreibung**

Dieses Profil beschreibt ein Forschungsregister in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Register' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Register, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| | |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| Library.name |  Forschungsvorhaben.Studienregister.Registername |
| Library.identifier |  Forschungsvorhaben.Studienregister.RegisterId |
| Library.relatedArtifact.document.url |  Forschungsvorhaben.Publikation.Autor |
| Library.extension:quellRegister |  Forschungsvorhaben.Publikation.Autor |

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-Register, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

---

**Beispiele**