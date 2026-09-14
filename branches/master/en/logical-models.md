# Logical Models - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Logical Models**

## Logical Models

### Logical Models

The logical data models of the **Medizinisches Forschungsvorhaben** module describe the domain dataset independently of its concrete FHIR representation.

### Data Sets incl. Descriptions

The information model for the Medical Research Project module was represented as a FHIR Logical Model:

[Logical model **mii-lm-studie-logicalmodel** — element overview on the artifact page](StructureDefinition-mii-lm-studie-logicalmodel.md)

Please note that the Logical Model is purely aimed at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding. This is ultimately determined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a concrete FHIR resource.

**The tabular element overview (element id and description) is rendered on the logical model artifact page; the former FQL table targeted the non-existent ext-space canonical `…/fhir/ext/modul-studie/…/LogicalModel/Studie` (source finding, see the migration report).**

