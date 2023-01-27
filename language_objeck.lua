-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Objeck",
  files = "%.obs$",
  comment = "#",
  patterns = {
    { pattern = "#.*",                      type = "comment"  },
    { pattern = { "#~", "~#" },             type = "comment"  },
    { pattern = { '"', '"', '\\' },         type = "string"   },
    { pattern = { "[%$%@]?\"", '"', '\\' }, type = "string"   }, -- string interpolation and verbatim
    { pattern = "'\\x%x?%x?%x?%x'",         type = "string"   }, -- character hexadecimal escape sequence
    { pattern = "'\\u%x%x%x%x'",            type = "string"   }, -- character unicode escape sequence
    { pattern = "'\\?.'",                   type = "string"   }, -- character literal
    { pattern = "-?0x%x+",                  type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",         type = "number"   },
    { pattern = "-?%.?%d+f?",               type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",     type = "operator" },
    { pattern = "%?%?",                     type = "operator" }, -- ?? null-coalescing
    { pattern = "%?%.",                     type = "operator" }, -- ?. null-conditional
    { pattern = "[%a_][%w_]*%f[(]",         type = "function" },
    { pattern = "[%a_][%w_]*",              type = "symbol"   },
  },
  symbols = {
    -- keywords and contextual keywords
    ["class"] = "keyword",
    ["method"] = "keyword",
    ["function"] = "keyword",
    ["public"] = "keyword",
    ["abstract"] = "keyword",
    ["private"] = "keyword",
    ["static"] = "keyword",
    ["native"] = "keyword",
    ["virtual"] = "keyword",
    ["Parent"] = "keyword",
    ["As"] = "keyword",
    ["from"] = "keyword",
    ["implements"] = "keyword",
    ["interface"] = "keyword",
    ["enum"] = "keyword",
    ["alias"] = "keyword",
    ["consts"] = "keyword",
    ["bundle"] = "keyword",
    ["use"] = "keyword",
    ["leaving"] = "keyword",
    ["if"] = "keyword",
    ["else"] = "keyword",
    ["do"] = "keyword",
    ["while"] = "keyword",
    ["select"] = "keyword",
    ["break"] = "keyword",
    ["continue"] = "keyword",
    ["other"] = "keyword",
    ["for"] = "keyword",
    ["each"] = "keyword",
    ["reverse"] = "keyword",
    ["label"] = "keyword",
    ["return"] = "keyword",
    ["critical"] = "keyword",
    ["New"] = "keyword",
    ["and"] = "keyword",
    ["or"] = "keyword",
    ["xor"] = "keyword",
    ["not"] = "keyword",
    -- types
    ["Nil"] = "keyword2",
    ["Byte"] = "keyword2",
    ["ByteHolder"] = "keyword2",
    ["Int"] = "keyword2",
    ["IntHolder"] = "keyword2",
    ["Float"] = "keyword2",
    ["FloatHolder"] = "keyword2",
    ["Char"] = "keyword2",
    ["CharHolder"] = "keyword2",
    ["Bool"] = "keyword2",
    ["BoolHolder"] = "keyword2",
    ["String"] = "keyword2",
    ["BaseArrayHolder"] = "keyword2",
    ["BoolArrayHolder"] = "keyword2",
    ["ByteArrayHolder"] = "keyword2",
    ["CharArrayHolder"] = "keyword2",
    ["FloatArrayHolder"] = "keyword2",
    ["IntArrayHolder"] = "keyword2",
    ["StringArrayHolder"] = "keyword2",
    ["Func2Holder"] = "keyword2",
    ["Func3Holder"] = "keyword2",
    ["Func4Holder"] = "keyword2",
    ["FuncHolder"] = "keyword2",
    -- literals
    ["true"]       = "literal",
    ["false"]      = "literal",
    --["Nil"]        = "literal",
  },
}

