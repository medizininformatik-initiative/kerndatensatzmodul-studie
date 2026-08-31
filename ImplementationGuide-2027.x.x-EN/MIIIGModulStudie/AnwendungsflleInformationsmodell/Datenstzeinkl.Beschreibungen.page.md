## Data Sets incl. Descriptions

The information model for the Medical Research Project module was represented as a FHIR Logical Model:

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-lm-studie-logicalmodel}}

Please note that the Logical Model is purely aimed at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding. This is ultimately determined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a concrete FHIR resource.

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/ext/modul-studie/StructureDefinition/LogicalModel/Studie' for differential.element select Logical_Data_Set: id, Description: short```
