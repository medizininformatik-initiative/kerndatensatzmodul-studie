<!-- markdownlint-disable MD041 -->
### Logische Modelle

Die logischen Datenmodelle des Moduls **Medizinisches Forschungsvorhaben** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     tree:LM directive + FQL table -> artifact-page link (source FQL targeted the retired ext-space canonical)) -->
### Datensätze inkl. Beschreibungen

Das Informationsmodells für das Modul Medizinisches Forschungsvorhaben wurde als FHIR Logical Model abgebildet:

[Logisches Modell **mii-lm-studie-logicalmodel** — Elementübersicht auf der Artefakt-Seite](StructureDefinition-mii-lm-studie-logicalmodel.html)

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

*Die tabellarische Element-Übersicht (Element-ID und Beschreibung) rendert die Artefakt-Seite des logischen Modells; die frühere FQL-Tabelle zielte auf die nicht (mehr) existierende ext-Space-Canonical `…/fhir/ext/modul-studie/…/LogicalModel/Studie` (Quellbefund, siehe Migrationsbericht).*
