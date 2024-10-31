highlight clear

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "cyberpunk-v2"

function! HighlightFor(group, ...)
  execute "hi ".a:group
        \ ." guifg=".a:1
        \ ." guibg=".a:2
        \ ." gui=".a:3
endfunction

execute "set guicursor=n-v-c-sm:hor50-Cursor,i-ci-ve:ver25-Cursor-blinkwait300-blinkon300-blinkoff300,r-cr-o:hor25-Cursor"

execute "set termguicolors"

" general 
call HighlightFor("Normal",      "#37ebf3", "#120b10", "NONE") " old bg: #1a1018
call HighlightFor("Visual",      "NONE",    "#563466", "NONE")
call HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
call HighlightFor("LineNr",      "#FF0055", "NONE",    "NONE")
call HighlightFor("SignColumn",  "#37ebf3", "NONE",    "NONE")

" Cursor {{{
call HighlightFor("Cursor",       "#1ac5b0", "#37ebf3",    "NONE")
call HighlightFor("CursorLineNr", "#272932", "#37ebf3", "NONE")
call HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
" Cursorline type
if exists("g:cyberpunk_cursorline") && g:cyberpunk_cursorline == "black"
  call HighlightFor("CursorLine",   "NONE", "#000000", "NONE")
else
  call HighlightFor("CursorLine",   "NONE", "#1c171f", "NONE")
endif

" Git-related colors
call HighlightFor("DiffAdd",    "NONE", "NONE",    "NONE")
call HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE" )
call HighlightFor("DiffText",   "NONE", "#37ebf3", "NONE")
call HighlightFor("DiffChange", "NONE", "NONE",    "NONE")

" Character-related colors
call HighlightFor("MatchParen", "#120b10", "#FF0055", "NONE")
call HighlightFor("NonText",    "#2B3E5A", "NONE", "NONE")
call HighlightFor("Whitespace", "#2B3E5A", "NONE", "NONE")

" Searching
execute "hi IncSearch guifg=#120b10 guibg=#FFFC58 gui=NONE cterm=reverse"

" call HighlightFor("IncSearch", \"#120b10\", \"#FDF500", \"NONE")
call HighlightFor("Search",     "#120b10", "#1ac5b0", "NONE")
call HighlightFor("Substitute", "#120b10", "#1ac5b0", "NONE")
call HighlightFor("CurSearch", "#120b10", "#fffc58", "NONE")

" Other

call HighlightFor("VertSplit", "#FF0055", "#101116", "NONE")
call HighlightFor("WinSeparator", "#FF0055", "#120b10", "NONE")

call HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
call HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
call HighlightFor("Title",     "#c592ff", "NONE", "NONE")

" Code {{{
" The following groups are not builtin but are defined commonly in syntax files
call HighlightFor("Comment",   "#6766b3", "NONE", "NONE")
call HighlightFor("String",    "#37ebf3", "NONE", "NONE")
call HighlightFor("Number",    "#fffc58",  "NONE", "NONE")
call HighlightFor("Float",     "#fffc58",  "NONE", "NONE")
call HighlightFor("Boolean",   "#fffc58",  "NONE", "NONE")
call HighlightFor("Character", "#fffc58",  "NONE", "NONE")

call HighlightFor("Conditional",  "#37ebf3", "NONE", "NONE")
call HighlightFor("Repeat",       "#37ebf3", "NONE", "NONE")
call HighlightFor("Label",        "#37ebf3", "NONE", "NONE")
call HighlightFor("Exception",    "#37ebf3", "NONE", "NONE")
call HighlightFor("Operator",     "#37ebf3", "NONE", "NONE")
call HighlightFor("Keyword",      "#37ebf3", "NONE", "NONE")
call HighlightFor("StorageClass", "#d57bff", "NONE", "NONE")
call HighlightFor("Statement",    "#37ebf3", "NONE", "NONE")

call HighlightFor("Function",   "#e455ae", "NONE", "NONE")
call HighlightFor("Identifier", "#EEFFFF", "NONE", "NONE")

call HighlightFor("PreProc", "#e455ae", "NONE", "NONE")
call HighlightFor("Type",      "#00FF9C", "NONE", "NONE")
call HighlightFor("Structure", "#00FF9C", "NONE", "NONE")
call HighlightFor("Typedef",   "#00FF9C", "NONE", "NONE")

call HighlightFor("Underlined", "NONE",    "NONE",    "NONE")
call HighlightFor("Todo",       "#00FF9C", "#372963", "italic")
call HighlightFor("Error",      "#710000", "NONE",   "undercurl")
call HighlightFor("ErrorMsg", "#FF0055", "NONE", "NONE")
call HighlightFor("WarningMsg", "#FCF500", "NONE",   "NONE")
call HighlightFor("Special",    "#e455ae", "NONE",   "NONE")
call HighlightFor("Tag",        "#e455ae", "NONE",   "undercurl")
" }}}

" Pmenu {{{
call HighlightFor("Pmenu",      "#ff0055", "#140007", "NONE")
call HighlightFor("PmenuSel",   "#140007", "#ff0055", "NONE")
call HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
call HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
" }}}

" Status line {{{
call HighlightFor("StatusLine",   "#ff0055", "#1d000a", "bold")
call HighlightFor("StatusLineNC", "#ff0055", "#000000", "NONE")
" }}}

" Diagnostic popup messages
call HighlightFor("DiagnosticOk", "#1AC5B0", "NONE", "NONE")
call HighlightFor("DiagnosticWarn", "#FFFC58", "NONE", "NONE")
call HighlightFor("DiagnosticError", "#FF0055", "NONE", "NONE")
call HighlightFor("DiagnosticInfo", "#E455AE", "NONE", "NONE")
call HighlightFor("DiagnosticHint", "#D1C5C0", "NONE", "NONE")

" Tab pages {{{
call HighlightFor("TabLine",     "#FF0055", "NONE", "NONE")
call HighlightFor("TabLineFill", "NONE",    "NONE", "NONE")
call HighlightFor("TabLineSel",  "#FF0055", "NONE", "bold")
" }}}

" Folds {{{
call HighlightFor("Folded",     "#1AC5B0", "NONE", "italic")
call HighlightFor("FoldColumn", "#1Ac5B0", "NONE", "NONE")
" }}}
