// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-meta (2027.0.0-ballot): input/fsh/rulesets/test-data-label.fsh
//
// Tags a resource as TEST data with the HL7 v3 ActReason security label HTEST.
// meta inserts it on every example instance, and so must this module: an example
// that leaks into a system without the label is indistinguishable from real
// patient data. Insert it FIRST on every `Usage: #example` instance:
//   * insert TestDataLabel
// Verbatim from meta; nothing module-specific, hence no placeholders.
// ─────────────────────────────────────────────────────────────────────────────

Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason

RuleSet: TestDataLabel
* meta
  * security[+] = $v3-ActReason#HTEST "test health data"
