syn match cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\::[^<(\ ;]*\>"me=e-0
"syn match cClassName /"\<[a-zA-Z_][a-zA-Z_0-9]*\>*\."me=e-1
hi def link cClassName Question


"highlight the functions
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[\ s]*("me=e-1
hi def link cFunction Todo
"hi def link Fuction Todo
" C math operators

syn match cppVector "\<[a-zA-Z_][a-zA-Z_0-9]*\>[\ s]*<[\<a-zA-Z][a-zA-Z_0-9*<>]*\>>"me=e-0
syn match cppVector "\<[a-zA-Z_][a-zA-Z_0-9]*\>[\ s]*<[\<a-zA-Z][a-zA-Z_0-9*<>]*\> >"me=e-0
hi def link cppVector Type

syn match cppMemberFunction "[->.]\<[a-zA-Z_][a-zA-Z_0-9]*\>()"me=e-0
hi def link cppMemberFunction  Todo
"identifier
"identifier

"C pointer operators
" C logical operators - boolean results
"syn match cLogicalOperator display /"[!<>]=/="
"syn match cLogicalOperator display /"=="
" C bit operators
"syn match cBinaryOperator display /"/(&/||/|/^/|<</|>>/)=/="
"	syn match cBinaryOperator display /"/~"
"	syn match cBinaryOperatorError display 
"	/""/~="
" More C logical operators - highlight in preference to binary
"syn match cLogicalOperator display /"&&/|||"
"syn match cLogicalOperatorError display /"/(&&/|||/)="

"	hi cMathOperator ctermfg=red 
"	hi def link cLogicalOperator Type
"	hi def link cBinaryOperator Type

