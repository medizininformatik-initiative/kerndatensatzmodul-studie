## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

### Relation zum Modul PERSON

Das bereits abgestimmte Basismodul PERSON modelliert Daten zu Patienten im Rahmen der MII und enthält auch eine minimale Version des Probanden. Dieses Konstrukt wird durch die vorliegende Beschreibung nicht ersetzt und steht auch nicht im Widerspruch dazu. Vielmehr wird die skizzierte Form von „Proband“ durch dieses Dokument erweitert und präzisiert.
Anmerkung: Die FHIR-Spezifikation des Basismoduls PERSON enthält in ihrer aktuellen Version Anforderungen bezüglich Kardinalitäten, die aus Sicht des Teams den praktischen Einsatz für medizinische Forschungsvorhaben über die Abbildung der MII Use Cases hinaus erschweren bzw. einschränken. Diese Konflikte werden im Rahmen der Profilerstellung mit dem Team PERSON diskutiert und aufgelöst.

### Relation zum Modul CONSENT
Das bereits abgestimmte Erweiterungsmodul CONSENT beschreibt Einwilligungserklärungen von aufgeklärten Patienten/Probanden sowie Policies zur Durchsetzung abgestufter Nutzungsvarianten. Dabei wird dort auf Forschungsvorhaben Bezug genommen, für welche ein solcher Consent gelten soll. Das Modul enthält in seinem aktuellen Entwurfszustand keine problematischen Konflikte mit Bezug auf Forschungsvorhaben.

### Relation zum Modul STRUKTURDATEN
Das in Abstimmung befindliche Erweiterungsmodul STRUKTURDATEN beschreibt Organisationsstrukturen, Standorte und einzelne Leistungsdaten von Organisationseinheiten in den Krankenhäusern der MII. Das Modul selbst hat keinen direkten Bezug zu Forschungsvorhaben, wird jedoch von diesem benutzt. Es sind aktuell keine modellierungstechnischen Konflikte absehbar.

### Relation zu anderen Modulen
In der Modulbeschreibung zur Charakterisierung des Erweiterungsmoduls medizinische Forschungsvorhaben (siehe Beschluss der AG Interoperabilität vom 17.03.2021) werden Abhängigkeiten von/zu weiteren Modulen erwähnt. Diese beziehen sich auf mögliche Abhängigkeiten in zukünftigen, inhaltlich erweiterten Versionen dieses Moduls und werden gegenwärtig nicht adressiert:
**1.**	Das hier vorliegende Informationsmodell beschäftigt sich aktuell nicht mit der Abbildung einzelner klinischer Parameter, wie sie bspw. In CRF-Bögen erhoben werden.
**2.**	Das hier vorliegende Informationsmodell benutzt aktuell keine erweiterten Metadaten zu Provenance oder Qualität.
Weitere Abhängigkeiten zu anderen Modulen sind dem Team nicht bekannt.
