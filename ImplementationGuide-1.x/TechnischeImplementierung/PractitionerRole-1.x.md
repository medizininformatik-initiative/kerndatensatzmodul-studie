## Beteiligte Person (PractitionerRole)

---

**Beschreibung**

Dieses Profil beschreibt eine beteiligte Person innerhalb einer Studie in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-BeteiligtePerson' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-BeteiligtePerson, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| | |

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

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-studie/StructureDefinition/MII-BeteiligtePerson, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Studie relevant, auch in Kombination:

---

**Beispiele**