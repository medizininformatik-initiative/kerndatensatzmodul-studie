<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/TechnischeImplementierung/FHIR-Profile/ResearchSubject.page.md (verbatim transfer; Simplifier
     directives crosswalked: profile-metadata FQL + diff/snapshot trees removed —
     the artifact page renders them natively; Suchparameter section moved to
     search-parameters.md per migration-log/page-map.tsv -->
## Proband:in (ResearchSubject)

---

Dieses Profil beschreibt eine ProbandIn in der Medizininformatik-Initiative.

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| ResearchSubject.id      | Must-support, jedoch optional        |
| ResearchSubject.meta       | Must-support, jedoch optional         |
| ResearchSubject.meta.profile       | VERPFLICHTEND für die Abfrage im DIZ-Repsoitory inkl Versionsnummer des Profils. Siehe [CapabilityStatement](capability-statements.html). In allen anderen Fällen optional.         |
| Patient.identifier:subjectIdentificationCode      | Fixes NamingSystem zur einheitlichen, standort-übergreifenden Abfrage des Identifiers (bei Auswertungen)         |
| ResearchSubject.period.start      | Startdatum (Einschluss der PatientIn in die Studie)      |
| ResearchSubject.period.end      | Enddatum (Abschluss der Studie oder Ausschluss der PatientIn)       |
| ResearchSubject.study      | Referenz auf die Metadaten der Studie an welcher die PatientIn teilnimmt. |
| ResearchSubject.individual      | Jede ProbandIn MUSS einer PatientIn zugeordnet werden. |
| ResearchSubject.consent      | Einwilligung in die Studie oder regulatorische Grundlage MUSS vorliegen. Weitere Vorgaben für die Modellierung des Consents können durch andere Module entstehen. |

---

**Mapping**

| FHIR-Element | Logischer Datensatz |
|--------------|-----------|
| ResearchSubject.identifier:subjectIdentificationCode       | Person.Studienteilnehmer.SubjektIdentifizierungscode         |
| ResearchSubject.status       | Person.Studienteilnehmer.StatusDerTeilnahme         |
| ResearchSubject.period.start       | Person.Studienteilnehmer.BeginnTeilnahme         |
| ResearchSubject.period.end       | Person.Studienteilnehmer.EndeTeilnahme         |
| ResearchSubject.consent       | Person.Studienteilnehmer.Rechtsgrundlage        |

---

**Beispiele**

Siehe Beispiel (minimal):

[ResearchSubject-mii-exa-studie-proband](ResearchSubject-mii-exa-studie-proband.html)
