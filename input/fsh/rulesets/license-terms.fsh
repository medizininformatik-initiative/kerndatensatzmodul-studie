// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-meta (2027.0.0-ballot): input/fsh/rulesets/license-terms.fsh
// The CRMI license meta-extension (CC-BY-4.0) for every artifact of this IG.
// Caret form for FSH-keyword declarations, Instance form for `InstanceOf:` resources.
// ─────────────────────────────────────────────────────────────────────────────

Alias: $spdx-license = http://hl7.org/fhir/spdx-license

RuleSet: LicenseCodeableCCBY40
* ^meta.extension[+].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license"
* ^meta.extension[=].valueCode = #CC-BY-4.0

RuleSet: LicenseCodeableCCBY40Instance
* meta.extension[+].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license"
* meta.extension[=].valueCode = #CC-BY-4.0
