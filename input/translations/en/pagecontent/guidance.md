<!-- markdownlint-disable MD041 -->

This section collects the domain guidance for implementing and using the
**Medizinisches Forschungsvorhaben** module.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.html)** — the module's data
  elements, described as logical models. (This entry shares its target with
  *Artifacts → Logical Models*; neither Artifacts-Summary anchor is usable as
  a link target — see
  [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-studie/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.html)** — visual representation of the data
  models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Implementers](implementer-guidance.html)** — technical
  guidance for DIC implementers.


---
For the KDS-wide conformance requirements see the
[Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
for the technical artifacts see [Profiles](profiles.html).

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     owner-authored translation from the 2027-EN guide tree) -->
### Description of Scenarios for the Application of the Modules

At the outset, the team of the Medical Research Project module developed a large number of possible scenarios that would influence the design and scope of the module. In order to arrive at a first consensus-able version, the following focus areas were identified, on which the present model concentrates:

**1.**	Support of the concept of the research study in the sense of a structured project with characteristics for identifying and managing a research project and for representing the basic characterizing features (study registry)

**2.**	Support of the concept of the subject in the sense of an identifiable subject and representation of the basic characterizing features for tracking and traceability

**3.**	Support of the concept of eligibility in the sense of the possibility of defining structured inclusion and exclusion criteria, on the basis of which it can be decided, at least partially automatically, whether an individual with their intrinsic characteristics belongs to the target population or not.
