"=============================================================================
" File: astrenumber.vim
" Author: Darshaka Pathirana (dpat@syn-net.org
" Description: Renumbers the priority of extensions.conf
" Help:
" Put astrenumber.vim into a plugin directory.
"
" Usage:
" :[range]Anr [s<number>]
"   [s<number>] to change the starting priority value (optional)

let g:AnrStartVal = 1

function! Astrenumber(...) range
    " save line numbers
    let lfirst = a:firstline
    let llast = a:lastline

    let startingValue = g:AnrStartVal

    " Get arguments
    " Change letter with a command setting the appropriate value
    let nargs = 1
    while nargs <= a:0
        let toex = ""
        if a:{nargs} =~? "^s"
            let toex = substitute(a:{nargs},"^s","let startingValue = ","")
        else
            " Ignore
            let toex = ""
        endif
        execute toex
        let nargs = nargs + 1
    endwhile
	" first version did not ignore comments starting with ;
	" execute lfirst . ',' . llast . 's/,n\|,\d*/,\@/'
	execute lfirst . ',' . llast . 's/\(^;\@!\(,\@!.\)*,\)\d*/\1\@/'
	execute lfirst . ',' . llast . 'Inc() s' . startingValue
endfunction

command! -n=* -range Anr :<line1>,<line2>call Astrenumber(<f-args>)

