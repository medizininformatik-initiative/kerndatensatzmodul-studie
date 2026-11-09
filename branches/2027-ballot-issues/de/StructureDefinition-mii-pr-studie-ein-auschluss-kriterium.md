# MII PR Studie EinAuschlussKriterium - MII Implementation Guide Medizinisches Forschungsvorhaben v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Studie EinAuschlussKriterium**

## Ressourcenprofil: MII PR Studie EinAuschlussKriterium 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium | *Version*:2027.0.0-ballot |
| Active Stand: 2026-01-09 | *Maschinenlesbarer Name*:MII_PR_Studie_EinAuschlussKriterium |

 
Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative. 

## Ein- und Ausschlusskriterium (EvidenceVariable)

-------

**Beschreibung**

Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative.

-------

**Hinweise**

| | |
| :--- | :--- |
| EvidenceVariable.id | Must-support, jedoch optional |
| EvidenceVariable.meta | Must-support, jedoch optional |
| EvidenceVariable.meta.profile | Verpflichtend für die Abfrage im DIZ-Repository inkl. Versionsnummer des Profils. Siehe[CapabilityStatement](capability-statements.md). In allen anderen Fällen optional. |
| EvidenceVariable.characteristic.description | Textuelle Beschreibung dess Kriteriums |
| EvidenceVariable.characteristic.definition[x] | In den dazugehöirgen Backport-Extensions aus FHIR R5 sind weitere Datentypen als in FHIR R4 erlaubt. Sollte z.B. die Extension definitionByCombination oder definitionByTypeAndValue verwendet werden, so muss definitionCodeableConcept mit dem Data-Absent-Reason Code "unknown" befüllt werden, sodass die Kardinalität von 1..1 erfüllt bleibt. |
| EvidenceVariable.characteristic.exclude | Boolesches Element welches definiert, ob es sich um ein Einschluss- oder Ausschlusskriterium handelt |

-------

**Mapping**

| | |
| :--- | :--- |
| EvidenceVariable.characteristic.description | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Kriterium |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Operator |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Masseinheit |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Einschlusskriterien.Wert |
| EvidenceVariable.characteristic.description | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Kriterium |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Operator |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Masseinheit |
| EvidenceVariable.characteristic.extension:definitionByTypeAndValue | Forschungsvorhaben.Studiendesign.Ausschlusskriterien.Wert |

-------

**Beispiele**

Beispiel (minimal):

[EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)

**Usages:**

* Examples for this Profile: [EvidenceVariable/mii-exa-studie-ein-auschluss-kriterium](EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium.md)
* CapabilityStatements using this Profile: [MII CPS Metadata Studie](CapabilityStatement-MII-CPS-Metadata-Studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.studie|current/StructureDefinition/StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [EvidenceVariable](http://hl7.org/fhir/R4/evidencevariable.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [EvidenceVariable](http://hl7.org/fhir/R4/evidencevariable.html) 

** Summary **

Must-Support: 11 elements
 Prohibited: 5 elements

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId](StructureDefinition-mii-ex-studie-backport-linkId.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of EvidenceVariable.characteristic.definition[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [EvidenceVariable](http://hl7.org/fhir/R4/evidencevariable.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [EvidenceVariable](http://hl7.org/fhir/R4/evidencevariable.html) 

** Summary **

Must-Support: 11 elements
 Prohibited: 5 elements

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId](StructureDefinition-mii-ex-studie-backport-linkId.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference](StructureDefinition-mii-ex-studie-backport-definitionReference.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical](StructureDefinition-mii-ex-studie-backport-definitionCanonical.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue](StructureDefinition-mii-ex-studie-backport-definition-by-type-and-value.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination](StructureDefinition-mii-ex-studie-backport-definition-by-combination.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of EvidenceVariable.characteristic.definition[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.csv), [Excel](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.xlsx), [Schematron](../StructureDefinition-mii-pr-studie-ein-auschluss-kriterium.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-studie-ein-auschluss-kriterium",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.studie"
      },
      {
        "url" : "version",
        "valueString" : "2027.0.0-ballot"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-09"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C15206"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C15429"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "name" : "Matthias Löbe",
      "telecom" : [{
        "system" : "email",
        "value" : "matthias.loebe@imise.uni-leipzig.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Thomas Debertshäuser",
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Margaux Gatrio",
      "telecom" : [{
        "system" : "email",
        "value" : "margaux.gatrio@bih-charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Studie_EinAuschlussKriterium",
  "title" : "MII PR Studie EinAuschlussKriterium",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Studie EinAuschlussKriterium"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Study Inclusion/Exclusion Criterion"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-09",
  "publisher" : "NUM-DIZ",
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Dieses Profil beschreibt ein Ein- und Auschlusskriterium innerhalb einer Studie in der Medizininformatik-Initiative."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "This profile describes an inclusion and exclusion criterion within a study in the Medical Informatics Initiative."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EvidenceVariable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EvidenceVariable",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EvidenceVariable",
      "path" : "EvidenceVariable"
    },
    {
      "id" : "EvidenceVariable.status",
      "path" : "EvidenceVariable.status",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Entwurf | aktiv | zurückgezogen | unbekannt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "draft | active | retired | unknown"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Der Status dieser EvidenceVariable. Ermöglicht die Verfolgung des Lebenszyklus des Inhalts."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The status of this evidence variable. Enables tracking the life-cycle of the content."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic",
      "path" : "EvidenceVariable.characteristic",
      "short" : "Characteristic",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Was die Mitglieder des Evidence-Elements definiert"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "What defines the members of the evidence element"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer “und”-Semantik angewendet.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Eine Eigenschaft, die die Mitglieder des Evidence-Elements definiert. Mehrere Eigenschaften werden mit einer \"und\"-Semantik angewendet."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "A characteristic that defines the members of the evidence element. Multiple characteristics are applied with \"and\" semantics."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension",
      "path" : "EvidenceVariable.characteristic.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:linkId",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "linkId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionReference",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionCanonical",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionCanonical",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionByTypeAndValue",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionByTypeAndValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.extension:definitionByCombination",
      "path" : "EvidenceVariable.characteristic.extension",
      "sliceName" : "definitionByCombination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByCombination"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.description",
      "path" : "EvidenceVariable.characteristic.description",
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionReference",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionReference",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionCanonical",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionCanonical",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ActivityDefinition"]
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionDataRequirement",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionDataRequirement",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "DataRequirement"
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.definition[x]:definitionTriggerDefinition",
      "path" : "EvidenceVariable.characteristic.definition[x]",
      "sliceName" : "definitionTriggerDefinition",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "TriggerDefinition"
      }]
    },
    {
      "id" : "EvidenceVariable.characteristic.usageContext",
      "path" : "EvidenceVariable.characteristic.usageContext",
      "max" : "0"
    },
    {
      "id" : "EvidenceVariable.characteristic.exclude",
      "path" : "EvidenceVariable.characteristic.exclude",
      "mustSupport" : true
    }]
  }
}

```
