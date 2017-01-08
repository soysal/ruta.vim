" Vim syntax file
" Language: Apache UIMA Ruta Script
" Maintainer: Ergin Soysal <esoysal@gmail.com>
" URL: http://soysal.net
" Last Change: 2017 Dec. 8
" Version: 0.2
"
" Changelog:
"   0.1 - initial version
"   0.2 - added supports for multiplicity and multiline comments
"         fixed repeat elements, distinguished operator and delimiter

if exists("b:current_syntax")
  finish
endif

syn match rutaDelimiter "[(,).;{}\[\]\^]"
syn match rutaOperator "[*?+\-%/|=<>!]"

syn match rutaMulti '\[[^\]]*\][*+?]*'

syn keyword rutaTodo contained TODO FIXME XXX NOTE
syn match rutaComment "//.*$" contains=rutaTodo
syn region rutaComment start="/\*" end="\*/" contains=rutaTodo

syn keyword rutaComponent TYPESYSTEM SCRIPT IMPORT PACKAGE ENGINE UIMAFIT
syn keyword rutaResource WORDLIST WORDTABLE
syn keyword rutaType AS DECLARE TYPE TYPELIST INT INTLIST FLOAT FLOATLIST
syn keyword rutaType DOUBLE DOUBLELIST STRING STRINGLIST BOOLEAN
syn keyword rutaType BOOLEANLIST ANNOTATION ANNOTATIONLIST
syn keyword rutaFunc EXP LOGN SIN COS TAN
syn keyword rutaCondition AFTER AND BEFORE CONTEXTCOUNT COUNT CONTAINS
syn keyword rutaCondition CURRENTCOUNT ENDSWITH FEATURE IF INLIST IS LAST MOFN
syn keyword rutaCondition NEAR NOT OR PARSE PARTOF PARTOFNEQ POSITION REGEXP
syn keyword rutaCondition SCORE SIZE STARTSWITH TOTALCOUNT VOTE
syn keyword rutaAction ADD ADDFILTERTYPE ADDRETAINTYPE ASSIGN CALL CLEAR COLOR
syn keyword rutaAction CONFIGURE CREATE DEL DYNAMICANCHORING EXEC FILL
syn keyword rutaAction FILTERTYPE GATHER GET GETFEATURE GETLIST GREEDYANCHORING
syn keyword rutaAction LOG MARK MARKFAST MARKFIRST MARKLAST MARKONCE MARKSCORE
syn keyword rutaAction MARKTABLE MATCHEDTEXT MERGE REMOVE REMOVEDUPLICATE
syn keyword rutaAction REMOVEFILTERTYPE REMOVERETAINTYPE REPLACE RETAINTYPE
syn keyword rutaAction SETFEATURE SHIFT SPLIT TRANSFER TRIE TRIM UNMARK UNMARKALL
syn keyword rutaClass COLON SW MARKUP PERIOD CW NUM QUESTION SPECIAL CAP COMMA
syn keyword rutaClass EXCLAMATION SEMICOLON NBSP AMP _ SENTENCEEND W PM ANY
syn keyword rutaClass ALL SPACE BREAK
syn keyword rutaRepeat BLOCK FOREACH
syn keyword rutaElement Document Sentence
syn region rutaString start='"' end='"'
syn region rutaString start="'" end="'"

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
hi def link rutaDelimiter  Delimiter
hi def link rutaOperator   Operator
hi def link rutaRepeat     Repeat
hi def link rutaMulti      Operator

let b:current_syntax = "ruta"
