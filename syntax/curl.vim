" Vim syntax file
" Language: cUrl
" Maintainer: Odelon Jhey Pacalso
" Latest Revision: 

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords curl POST GET PUT DELETE
syn keyword curlArgs --location --request --header --data-raw

" Regular int like number with - + or nothing in front
syn match curlNumber '\d\+' display
syn match curlNumber '[-+]\d\+' display

" Floating point number with decimal no E or e (+,-)
syn match curlNumber '\d\+\.\d*' display
syn match curlNumber '[-+]\d\+\.\d*' display

" Floating point like number with E and no decimal point (+,-)
syn match curlNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' display
syn match curlNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' display

" Floating point like number with E and decimal point (+,-)
syn match curlNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' display
syn match curlNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' display

syn region curlString start='"' end='"'

let b:current_syntax = "curl"

hi def link basicLanguageKeywords    Statement
hi def link curlArgs                 Type
hi def link curlString               String
hi def link curlNumber               Number
