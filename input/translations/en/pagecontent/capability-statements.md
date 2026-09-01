<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/capability-statements.md.
     German mirror: input/translations/de/pagecontent/capability-statements.md. -->
### Capability Statements

The CapabilityStatements of the **Medizinisches Forschungsvorhaben** module describe the expected server/client capabilities (supported resources and interactions).

<!-- Migrated 2026-08-31 from ImplementationGuide-2027.x.x-EN/MIIIGModulStudie/TechnischeImplementierung/CapabilityStatement.page.md (verbatim transfer per
     migration-log/page-map.tsv;
     render directive for the CS canonical -> lang-fragment inline render; stale Simplifier resolve link
     (@1.0.0-ballot scope) -> artifact page link;
     owner-authored translation from the 2027-EN guide tree) -->
### CapabilityStatement

In order to enable decentralized data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/http.html#capabilities) MUST be supported, so that a CapabilityStatement is exposed by the FHIR server under ```[BASE_URL]/metadata```. Within this CapabilityStatement, it MUST be specified which profiles, including version, and which search parameters are supported.

The following lists the content that MUST be specified in the CapabilityStatement. Furthermore, conformance to the following CapabilityStatement MUST be specified in the respective CapabilityStatement instance under [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: ```https://www.medizininformatik-initiative.de/fhir/modul-studie/CapabilityStatement/metadata```

[Link Simplifier Profile Overview](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.studie@1.0.0-ballot)

{% lang-fragment CapabilityStatement-MII-CPS-Metadata-Studie-html.xhtml %}
