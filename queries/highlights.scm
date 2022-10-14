(identifier) @type

(comment) @comment
[(null) (keyword)] @keyword
[(type) (literal) ] @type
[(integer) (float)] @number
(string) @string
(bool) @constant
(interpolation "$" @punctuation.special)
(interpolation
  "${" @punctuation.special
  "}" @punctuation.special
) @injection.content

(metadata) @tag
(metadata name: (identifier) @type) @tag
(import_statement name: (attribute) @type)
(package_statement name: (attribute) @type)
(class_declaration name: (identifier) @type)
(class_declaration (type_param (attribute)) @type)

(function_declaration name: (identifier) @function)
; (function_declaration modifiers: (keyword) @keyword)

(modifier) @emphasis

((identifier) @type.builtin
 (#any-of? @type.builtin
              "Any" "Array" "ArrayAccess" "Bool" "Class" "Date" "DateTools" "Dynamic" "Enum" "EnumValue" "EReg"
              "Float" "IMap" "Int" "IntIterator" "Iterable" "Iterator" "KeyValueIterator" "KeyValueIterable"
              "Lambda" "List" "ListIterator" "ListNode" "Map" "Math" "Null" "Reflect" "Single" "Std" "String"
              "StringBuf" "StringTools" "Sys" "Type" "UInt" "UnicodeString" "ValueType" "Void" "Xml" "XmlType"
))

(variable_declaration name: (identifier) @variable)
; (variable_declaration (type) @type)
; (increment_operator) @operator
; (decrement_operator) @operator
; (decrement_unop (identifier) (decrement_operator))
; (decrement_unop (identifier) (decrement_operator))
