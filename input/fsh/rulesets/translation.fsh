RuleSet: Translation(element, lang, text)
* {element}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {element}.extension[=].extension[+].url = "lang"
* {element}.extension[=].extension[=].valueCode = #{lang}
* {element}.extension[=].extension[+].url = "content"
* {element}.extension[=].extension[=].valueString = "{text}"