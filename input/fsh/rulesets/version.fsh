// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-meta (2027.0.0-ballot): input/fsh/rulesets/version.fsh
// meta literals replaced by this repository's values:
//   "2027.0.0-ballot" → "2027.0.0-ballot.rc1"
//   de.medizininformatikinitiative.kerndatensatz.meta → …kerndatensatz.studie
//   modul-meta → modul-studie
// ─────────────────────────────────────────────────────────────────────────────

// switch version of all conformance resources here
RuleSet: Version
* version = "2027.0.0-ballot.rc1"
* extension[+].url = $artifact-versionAlgorithm
* extension[=].valueCoding = $version-algorithm#semver "SemVer"

RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-ballot.rc1"
* ^extension[+].url = $artifact-versionAlgorithm
* ^extension[=].valueCoding = $version-algorithm#semver "SemVer"

Alias: $artifact-versionAlgorithm = http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm
Alias: $version-algorithm = http://hl7.org/fhir/version-algorithm

// Package provenance for resources defined or included by this IG.
RuleSet: CRMIPackageSource
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* meta.extension[=].extension[+].url = "packageId"
* meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.studie"
* meta.extension[=].extension[+].url = "version"
* meta.extension[=].extension[=].valueString = "2027.0.0-ballot.rc1"
* meta.extension[=].extension[+].url = "uri"
* meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-studie"

RuleSet: CRMIPackageSourceDefinitionalResource
* ^meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* ^meta.extension[=].extension[+].url = "packageId"
* ^meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.studie"
* ^meta.extension[=].extension[+].url = "version"
* ^meta.extension[=].extension[=].valueString = "2027.0.0-ballot.rc1"
* ^meta.extension[=].extension[+].url = "uri"
* ^meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-studie"

// A release remains applicable until a later release replaces it, so only the
// start of the effective period is asserted.
RuleSet: CRMIResourceEffectivePeriod
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "2027"

RuleSet: CRMIResourceEffectivePeriodInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2027"
