<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchStudy.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv -->
## Studie (ResearchStudy)

---

**Beschreibung**

Dieses Profil beschreibt eine Studie in der Medizininformatik-Initiative.



---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| ResearchStudy.id      | Must-support, jedoch optional        |
| ResearchStudy.meta       | Must-support, jedoch optional         |
| ResearchStudy.meta.profile       | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe [CapabilityStatement](capability-statements.html). In allen anderen Fällen optional.         |
| ResearchStudy.identifier | In den meisten Fällen wird kein NamingSystem für die Vergabe der BusinessIDs geben. Ein eigenes lokales NamingSystem sollte daher verwendet werden. |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit      | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |
| ResearchStudy.extension:Randomisierungsmethode      | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |
| ResearchStudy.extension:associatedParty | Diese Extension kann verwendet werden, falls mehr Kontaktpersonen zu der Studie angegeben werden sollen, als die Kardinalität von ResearchStudy.principalInvestigator oder ResearchStudy.sponsor dies erlaubt. |
| ResearchStudy.category    | Hausinterne Kodierung kann hier verwendet werden. Die nächste Version des vorliegenden Moduls wird hier voraussichtlich weitere Vorgaben zur Standardisierung eines ValueSets fordern. |

---

**NamingSystems**

Für folgende Studienregister werden bereits Preferred URLs für die dazugehörigen NamingSystems definiert:

| Register | URL |
|----------|-----|
| clinicaltrials.gov | https://clinicaltrials.gov |
| Deutsches Register Klinischer Studien (DRKS) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks |
| Universal Trial Number (UTN) | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/utn |
| EudraCT | https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.title |  Forschungsvorhaben.Titel  |
| ResearchStudy.focus |  Forschungsvorhaben.Studienfokus |
| ResearchStudy.keyword |  Forschungsvorhaben.Schlagwort |
| ResearchStudy.extension:OeffentlicherTitel |  Forschungsvorhaben.Titel.OeffentlicherTitel |
| ResearchStudy.extension:WissenschaftlicherTitel |  Forschungsvorhaben.Titel.WissenschaftlicherTitel |
| ResearchStudy.extension:Akronym |  Forschungsvorhaben.Titel.Akronym |
| ResearchStudy.extension:Rekrutierungsstart |  Forschungsvorhaben.Studiendesign.Rekrutierungsstart |
| ResearchStudy.arm.name |  Forschungsvorhaben.Studiendesign.Studienarm.Name |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Studientyp |
| ResearchStudy.extension:Rekrutierungsziel |  Forschungsvorhaben.Studiendesign.Rekrutierungsziel |
| ResearchStudy.extension:Rekrutierungsstand |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand |
| ResearchStudy.extension:RekrutierungsstandGenauigkeit |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandGenauigkeit |
| ResearchStudy.extension:RekrutierungsstandDatum |  Forschungsvorhaben.Studiendesign.Rekrutierungsstand.RekrutierungsstandDatum |
| ResearchStudy.category |  Forschungsvorhaben.Studiendesign.Randomisierungsmethode |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.extension:finanzierung |  Forschungsvorhaben.Finanzierung |

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
| ResearchStudy.identifier.value |  Forschungsvorhaben.BusinessID.id |
| ResearchStudy.identifier.system |  Forschungsvorhaben.BusinessID.System |

---

**Beispiele**

Siehe Beispiel (minimal):

[ResearchStudy-mii-exa-studie-studie](ResearchStudy-mii-exa-studie-studie.html)
