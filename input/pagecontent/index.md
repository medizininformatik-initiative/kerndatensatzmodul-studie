<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/Index.page.md + ImplementationGuide-2027.x.x-DE/MIIIGModulStudie/BeschreibungModul.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     index:root ToC directive section dropped — the publisher renders toc.html and the menu) -->
<!-- markdownlint-disable MD041 -->

### Einleitung

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls Medizinisches Forschungsvorhaben der Medizininformatik-Initiative.
Im Folgenden werden die Use-Case des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.


| Veröffentlichung |               |
|------------------|---------------|
| Datum            | 2026-01-09 |
| Version          | 2026.0.1 (CalVer `JJJJ.n.n`) |
| Status           | active        |
| Realm            | DE            |

Den ersten Release finden Sie unter [2025.0.0](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Medizinische_Forschungsvorhaben_V2025/ImplementationGuide-1.x-TechnischeImplementierung-Organization.html)

### Beschreibung Modul Medizinisches Forschungsvorhaben

Das MII KDS Modul Medizinisches Forschungsvorhaben ist als Modul des [Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative) entstanden. 

Medizinisches Forschungsvorhaben im Rahmen der Medizininformatik sind geplante experimentelle klinische und epidemiologische Untersuchungen, die sich auf strukturierte Datenerfassungen meist menschlicher Probanden stützen. Sie umfassen eine breite Palette verschiedener Typen mit einem unterschiedlichen Grad an regulativen Vorgaben. Ausdrücklich eingeschlossen in diesem Modul sind:

•	**Klinische Prüfungen** dienen dem Nachweis der Überlegenheit neuer Therapien und deren Unbedenklichkeit. Sie können sowohl interventionell als auch beobachtend sein. Ein häufiges Anwendungsgebiet sind Arzneimittelzulassungsstudien, für deren Durchführung strenge gesetzliche Vorgaben existieren, um die Prüfungsteilnehmer zu schützen. Kennzeichnend für klinische Prüfungen bzw. klinische Studien sind vergleichsweise kleine Probandenkollektive, eine abgegrenzte Fragestellung, ein spezifischer, aber vom Umfang her überschaubarer Datenkatalog sowie eine festgelegte Projektdauer. Viele klinische Studien teilen das Untersuchungskollektiv in verschiedene Teilkollektive (Arme) ein, welche u.U. andere Datenerhebungsverfahren bedienen. Des Weiteren werden klinische Studien häufig an mehreren Standorten (multizentrisch) durchgeführt. Typisch für klinische Studien ist ein aktives Datenmanagement, aber ein geringer Standardisierungsgrad einzelner Datenelemente zwischen verschiedenen Studien.

•	**Register** dienen der longitudinalen Untersuchung festgelegter Krankheitsschwerpunkte. Die Rechtsgrundlage der Datenerhebung kann hierbei variieren. Das Probandenkollektiv ist häufig größer als bei klinischen Studien und wird dauerhaft, häufig intensional bis zum Tod, beobachtet. Daraus ergeben sich spezielle Herausforderungen des Nachverfolgens von Probanden (Tracking, Record Linkage). Der Datenkatalog ähnelt von der Komplexität her klinischen Studien. Register sind üblicherweise nichtinterventionell und einarmig. Sie können mono- oder multizentrisch sein. Register verfügen je nach Ressourcen über ein aktives oder nur ein minimales Datenmanagement.

•	**Kohorten** sind Untersuchungen einer großen Menge freiwilliger Probanden, die einen repräsentativen Querschnitt der Zielpopulation abbilden sollen. Kohorten untersuchen sehr breite Fragestellungen, die zu Beginn nicht vollumfänglich definiert werden. Kohorten sind längerfristig angelegt, unterscheiden sich von Registern jedoch dadurch, dass die aktive Untersuchungsphase häufig auf einen oder wenige Zeitpunkte mit einem sehr detaillierten, umfänglichen Datenkatalog beschränkt ist und danach nur sehr wenige Informationen erhoben werden (z.B. Vitalstatus, Gesundheitszustand). Aufgrund der nötigen Infrastruktur sind Kohorten häufig monozentrisch angelegt, es existieren aber auch große multizentrische Kohorten (z.B. NAKO). Typisch für Kohorten ist ein breiter Datenkörper aus strukturierten Daten, Bildern, genomischen Daten, Bioproben u.v.m., wobei aufgrund der langen Projektdauer die Erhebungsinstrumente, Geräte und Analyseverfahren Änderungen unterliegen, sodass einzelne Datenelemente standardisiert bzw. in neue Versionen überführt werden müssen. Kohorten haben ein aktives Datenmanagement, können aber aufgrund des fehlenden längerfristigen Patientenkontakts keine Rückfragen bei Inplausibilitäten durchführen.

•	**Public Health** bzw. **Surveillance** sind Forschungsvorhaben, die sehr divergente Fragestellungen mit und ohne Probandenkontakt, mit projektspezifischer Datenerhebung oder als Sekundärverwendung anderweitig erhobener Daten, mit konkretem Krankheitsbezug oder mit breitem Untersuchungsgegenstand (z.B. Bundes-Gesundheitssurvey) umfassen. Die untersuchten Kollektive sind tendenziell größer (verglichen mit Studien und Registern). Ein besonderes Merkmal ist ein großer Anteil von Patientenbefragungen in Form von papierbasierten oder elektronischen Fragebögen, die bestimmte Verhaltensweisen, Meinungen oder Expositionen in natürlicher Sprache abfragen. Public Health bzw. Surveillance werden oft in Wellen ähnlicher Art durchgeführt. Der einzelne Proband steht hier und bei Kohorten weniger im Fokus als bei Registern oder Studien.

•	**Anwendungsfälle** der MII sind kein spezieller Typ der medizinischen Forschung. Unter Anwendungsfällen kann jeder der vier oben genannten Typen verstanden werden, jedoch auch freie projektspezifische Forschungsvorhaben, die auf existierenden Daten basieren. Anwendungsfälle im Rahmen der MII umfassen bspw. die Konsortien-internen und -übergreifenden Use Cases, aber auch retrospektive Analysen, Machbarkeitsuntersuchungen oder Vorhaben zur Anwendung von Methoden der Künstlichen Intelligenz. Sie sind patientenorientiert in dem Sinn, dass die Nachverfolgung bspw. von eingeschlossenen oder einschließbaren Patienten eines Standorts erforderlich ist, dass eine Zuordnung zu verantwortlichen Organisationseinheiten nötig ist oder dass Projektvorhaben einer strukturierten Ablaufbeschreibung und definierten Verantwortlichkeiten unterliegen. Im Besonderen sind hier auch die basalen Prozessstellen in Projekt Deutsche Forschungsportal Gesundheit (früher ZARS) adressiert.

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="guidance.html">Anleitung für Forschende</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache,
  Must-Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modul-spezifischen Aspekte zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-ig-studie.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender
  Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre
Abhängigkeiten sind unter
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.


Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum
Dieser Leitfaden ist im Rahmen der Medizininformatik-Initative erstellt wurden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner
* Matthias Löbe, Inst. for Medical Informatics (IMISE), University of Leipzig
* Karoline Buckow, TMF – Technologie- und Methodenplattform
für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik wird in Form von 'Issues' im [GitHub-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/issues) gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)
* Bartow, Martin
* Brix, Tobias
* Gatrio, Margaux
* Gulden, Christian
* Löbe, Matthias
* Macho , Philipp Marten
* Rinaldi, Eugenia 
* Scherer, Clemens
* Strauch, Natalia
* Ulbrich, Florian
* Vella, Gustav
* Zautke, Alexander

### Copyright-Hinweis, Nutzungshinweise
<p>
    © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. <br>
    Dieses Werk ist lizenziert unter der 
    <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Namensnennung 4.0 International Lizenz</a>.
</p>
<a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">
    <img src="https://licensebuttons.net/l/by/4.0/88x31.png" alt="CC BY 4.0 Logo" style="border:0;">
</a>

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer
* Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

* Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.

<br><br>
