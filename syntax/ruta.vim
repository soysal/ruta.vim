" Vim syntax file
" Language:Ruta Script
" Maintainer:Ergin Soysal <esoysal@gmail.com>
" URL: http://soysal.net
" Last Change:2017 Dec. 3
" Version: 0.4
"
" Changelog:
"   0.1 - initial upload, modification from vimscript#1201, Extended c.vim

if exists("b:current_syntax")
  finish
endif

syn match rutaOperator "[(,).;{}\[\]\^]"
syn match rutaOperator "[*?+\-%/|=<>!]"

syn keyword rutaTodo contained TODO FIXME XXX NOTE
syn match rutaComment "//.*$" contains=rutaTodo

syn keyword rutaComponent TYPESYSTEM SCRIPT IMPORT PACKAGE ENGINE UIMAFIT
syn keyword rutaResource WORDLIST WORDTABLE
syn keyword rutaType AS DECLARE TYPE TYPELIST INT INTLIST FLOAT FLOATLIST
syn keyword rutaType DOUBLE DOUBLELIST STRING STRINGLIST BOOLEAN
syn keyword rutaType BOOLEANLIST ANNOTATION ANNOTATIONLIST
syn keyword rutaFunc EXP LOGN SIN COS TAN
syn keyword rutaCondition AFTER AND BEFORE CONTAINS
syn keyword rutaCondition CONTEXTCOUNT COUNT
syn keyword rutaCondition CURRENTCOUNT ENDSWITH FEATURE IF INLIST IS LAST MOFN
syn keyword rutaCondition NEAR NOT OR PARSE PARTOF PARTOFNEQ POSITION REGEXP
syn keyword rutaCondition SCORE SIZE STARTSWITH TOTALCOUNT VOTE
syn keyword rutaAction ADD ADDFILTERTYPE ADDRETAINTYPE ASSIGN CALL CLEAR COLOR CONFIGURE CREATE DEL DYNAMICANCHORING EXEC FILL FILTERTYPE GATHER GET GETFEATURE GETLIST GREEDYANCHORING LOG MARK MARKFAST MARKFIRST MARKLAST MARKONCE MARKSCORE MARKTABLE MATCHEDTEXT MERGE REMOVE REMOVEDUPLICATE REMOVEFILTERTYPE REMOVERETAINTYPE REPLACE RETAINTYPE SETFEATURE SHIFT SPLIT TRANSFER TRIE TRIM UNMARK UNMARKALL
syn keyword rutaClass COLON SW MARKUP PERIOD CW NUM QUESTION SPECIAL CAP COMMA
syn keyword rutaClass EXCLAMATION SEMICOLON NBSP AMP _ SENTENCEEND W PM ANY
syn keyword rutaClass ALL SPACE BREAK'
syn keyword rutaBlock BLOCK FOREACH
syn keyword rutaElement Document Sentence
syn region rutaString start='"' end='"'
syn region rutaString start="'" end="'"

" Operators
"syn match rutaOperator"\(<<\|>>\|[-+*/%&^|<>!=]\)="
"syn match rutaOperator"<<\|>>\|&&\|||\|++\|--\|->"
"syn match rutaOperator"[.!~*&%<>^|=,+-]"
"syn match rutaOperator"/[^/*=]"me=e-1
"syn match rutaOperator"/$"
"syn match rutaOperator "&&\|||"
"syn match rutaOperator"[][]"
syn match rutaNumber '\d\+'
syn match rutaNumber '[-+]\d\+'
syn match rutaNumber '\d\+\.\d*'
syn match rutaNumber '[-+]\d\+\.\d*'


" Regions
syn region syntaxElementRegion start='{' end='}' fold transparent

hi def link rutaTodo       Todo
hi def link rutaComment    Comment
hi def link rutaComponent  PreProc
hi def link rutaAction     Statement
hi def link rutaFunc       Function
hi def link rutaResource   Type
hi def link rutaType       Type
hi def link rutaElement    Identifier
hi def link rutaString     String
hi def link rutaNumber     Number
hi def link rutaCondition  Conditional
hi def link rutaClass      Constant
hi def link rutaOperator   Delimiter

" Number Special(Delimiter) Identifier(Function) Constant(String Number
" Boolean) Statement(Conditional Operator Keyword) PreProc(Include Define)
" Type (Structure TypeDef) Underlined Ignore Error Normal

let b:current_syntax = "ruta"
