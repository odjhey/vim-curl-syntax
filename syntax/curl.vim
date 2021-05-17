" Vim syntax file
" Language: cUrl
" Maintainer: Odelon Jhey Pacalso
" Latest Revision: 

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords curl POST GET PUT DELETE
syn keyword curlArgs --location --request --header --data-raw

let b:current_syntax = "curl"

hi def link basicLanguageKeywords    Statement
hi def link curlArgs                 Type

