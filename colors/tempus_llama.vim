" Name: Tempus Llama
" Description: Dark theme with colours inspired by concept art of outer space (WCAG AAA compliant)
" Author: Yassin Achengli (achengli@github.com)
" Meta: Created with the Tempus Themes Generator
" URL: https://gitlab.com/protesilaos/tempus-themes-generator

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "tempus_llama"

" General
" -------
if exists("g:tempus_enforce_background_color")
	hi Normal guibg=#090a18 guifg=#d8cccd ctermbg=0 ctermfg=15
else
	" NOTE the ctermbg=none is for terminals with transparency
	hi Normal guibg=#090a18 guifg=#d8cccd ctermbg=none ctermfg=15
endif

hi Visual guibg=#d8cccd guifg=#090a18 ctermbg=15 ctermfg=0
hi Search gui=underline,bold guibg=#2b1329 guifg=#d8cccd cterm=underline,bold ctermbg=8 ctermfg=3
hi IncSearch gui=underline,bold guibg=#a7a2c4 guifg=#090a18 term=none cterm=underline,bold ctermbg=7 ctermfg=0

hi StatusLine gui=none guibg=#d8cccd guifg=#090a18 cterm=none ctermbg=15 ctermfg=0
hi StatusLineNC gui=none guibg=#2b1329 guifg=#a7a2c4 cterm=none ctermbg=8 ctermfg=7
hi StatusLineTerm gui=none guibg=#cddafd guifg=#090a18 cterm=none ctermbg=2 ctermfg=0
hi StatusLineTermNC gui=none guibg=#2b1329 guifg=#cddafd cterm=none ctermbg=8 ctermfg=2

hi VertSplit gui=none cterm=none
hi TabLine gui=none guibg=#2b1329 guifg=#a7a2c4 cterm=none ctermbg=8 ctermfg=7
hi TabLineSel gui=none guibg=#748cab guifg=#090a18 cterm=none ctermbg=6 ctermfg=0
hi TabLineFill gui=none cterm=none

hi Comment gui=italic guifg=#a7a2c4 cterm=none ctermfg=7
hi Todo gui=bold guibg=#2b1329 guifg=#de9b1d cterm=bold ctermbg=8 ctermfg=11

hi Warning gui=none guibg=#e6ccb2 guifg=#090a18 cterm=none ctermbg=3 ctermfg=0metodo runge kutta para ecuaciones diferenciales de segundo orden
hi WarningMsg gui=none guibg=#e6ccb2 guifg=#090a18 cterm=none ctermbg=3 ctermfg=0
hi Error gui=none guibg=#edf2f4 guifg=#090a18 cterm=none ctermbg=1 ctermfg=0
hi ErrorMsg gui=none guibg=#edf2f4 guifg=#090a18 cterm=none ctermbg=1 ctermfg=0

hi MatchParen gui=underline,bold guibg=#2b1329 guifg=#a7a2c4 cterm=underline,bold ctermbg=8 ctermfg=7

hi ToolbarLine guibg=#a7a2c4 guifg=#090a18 term=none ctermbg=7 ctermfg=0
hi ToolbarButton gui=bold guibg=#a7a2c4 guifg=#090a18 term=none cterm=bold ctermbg=7 ctermfg=0

hi WildMenu guibg=#090a18 guifg=#f7fff7 term=standout ctermbg=0 ctermfg=15

hi Terminal guibg=#090a18 guifg=#f7fff7 term=none ctermbg=0 ctermfg=15

" Constructs
" ----------
hi Constant guifg=#b6f9c9 ctermfg=4
hi Number guifg=#b6f9c9 ctermfg=4
hi Float guifg=#b6f9c9 ctermfg=4
hi String guifg=#8ba7ea ctermfg=12

hi Function guifg=#edf2f4 ctermfg=5
hi Identifier guifg=#c9184a term=none ctermfg=13
hi Label guifg=#edf2f4 ctermfg=5
hi Tag guifg=#edf2f4 ctermfg=5
hi Keyword gui=bold guifg=#c9184a gui=bold ctermfg=13

hi Character gui=bold guifg=#da627d cterm=bold ctermfg=14

hi Type gui=none,bold guifg=#748cab term=none cterm=none,bold ctermfg=6
hi Boolean guifg=#748cab ctermfg=6
hi StorageClass guifg=#748cab ctermfg=6
hi Structure guifg=#748cab ctermfg=6
hi Typedef gui=bold guifg=#da627d cterm=bold ctermfg=14

hi Conditional gui=bold guifg=#cddafd cterm=bold ctermfg=2
hi Statement gui=none guifg=#81b29a cterm=none ctermfg=10
hi Repeat gui=bold guifg=#81b29a cterm=bold ctermfg=10
hi Operator gui=bold guifg=#f7fff7 cterm=bold ctermfg=15
hi Exception gui=bold guifg=#edf2f4 cterm=bold ctermfg=1

hi Preproc gui=none guifg=#ff8fab term=none cterm=none ctermfg=9
hi PreCondit gui=bold guifg=#ff8fab cterm=bold ctermfg=9
hi Macro gui=bold guifg=#ff8fab cterm=bold ctermfg=9
hi Include guifg=#ff8fab ctermfg=9
hi Define guifg=#ff8fab ctermfg=9

hi Title gui=bold guibg=#090a18 guifg=#748cab cterm=bold ctermbg=0 ctermfg=6

hi Delimeter gui=bold guifg=#edf2f4 cterm=bold ctermfg=5
hi Delimiter gui=bold guifg=#edf2f4 cterm=bold ctermfg=5
hi SpecialComment gui=bold guifg=#edf2f4 cterm=bold ctermfg=5

hi Debug guifg=#c9184a ctermfg=13

" Other
" -----
hi LineNr guibg=#2b1329 guifg=#a7a2c4 term=none ctermbg=8 ctermfg=7
hi Cursor guibg=#f7fff7 guifg=#090a18 ctermbg=15 ctermfg=0
hi CursorLine gui=none guibg=#2b1329 term=none cterm=none ctermbg=8
hi CursorColumn gui=none guibg=#2b1329 term=none cterm=none ctermbg=8
hi CursorLineNr gui=bold guibg=#a7a2c4 guifg=#090a18 cterm=bold ctermbg=7 ctermfg=0
hi ColorColumn guibg=#2b1329 guifg=#f7fff7 term=none ctermbg=8 ctermfg=15
hi SignColumn guibg=#2b1329 guifg=#a7a2c4 term=none ctermbg=8 ctermfg=7

hi Folded guibg=#2b1329 guifg=#a7a2c4 ctermbg=8 ctermfg=7
hi FoldColumn guibg=#2b1329 guifg=#a7a2c4 ctermbg=8 ctermfg=7

hi Special gui=bold guifg=#de9b1d term=none cterm=bold ctermfg=11
hi SpecialKey gui=none guibg=#2b1329 guifg=#a7a2c4 cterm=none ctermbg=8 ctermfg=7
hi SpecialChar gui=bold guifg=#de9b1d cterm=bold ctermfg=11
hi NonText gui=none guibg=#2b1329 guifg=#a7a2c4 cterm=none ctermbg=8 ctermfg=7
hi EndOfBuffer gui=bold guifg=#a7a2c4 cterm=bold ctermfg=7

hi Directory gui=none guifg=#cddafd term=none cterm=none ctermfg=2
hi Question gui=bold guifg=#de9b1d cterm=bold ctermfg=11
hi MoreMsg guifg=#81b29a ctermfg=10
hi ModeMsg gui=bold guifg=#cddafd cterm=bold ctermfg=2

hi VimOption guifg=#edf2f4 ctermfg=5
hi VimGroup guifg=#edf2f4 ctermfg=5

hi Underlined gui=underline guifg=#f7fff7 cterm=underline ctermfg=15
hi Ignore guibg=#2b1329 guifg=#a7a2c4 ctermbg=8 ctermfg=7
hi Conceal guibg=#a7a2c4 guifg=#2b1329 ctermbg=7 ctermfg=8

hi SpellBad guibg=#edf2f4 guifg=#090a18 ctermbg=1 ctermfg=0
hi SpellCap guibg=#e6ccb2 guifg=#090a18 ctermbg=3 ctermfg=0
hi SpellRare guibg=#c9184a guifg=#090a18 ctermbg=13 ctermfg=0
hi SpellLocal guibg=#da627d guifg=#090a18 ctermbg=14 ctermfg=0

hi Pmenu gui=italic guibg=#2b1329 guifg=#f7fff7 cterm=none ctermbg=8 ctermfg=15
hi PmenuSel gui=none,bold guibg=#a7a2c4 guifg=#090a18 cterm=none,bold ctermbg=7 ctermfg=0
hi PmenuSbar guibg=#2b1329 ctermbg=8
hi PmenuThumb guibg=#a7a2c4 ctermbg=7

" Terminal
" --------

if exists('*term_setansicolors')
	let g:terminal_ansi_colors = [
				\ "#090a18",
				\ "#edf2f4",
				\ "#cddafd",
				\ "#e6ccb2",
				\ "#b6f9c9",
				\ "#edf2f4",
				\ "#748cab",
				\ "#a7a2c4",
				\ "#2b1329",
				\ "#ff8fab",
				\ "#81b29a",
				\ "#de9b1d",
				\ "#8ba7ea",
				\ "#c9184a",
				\ "#da627d",
				\ "#f7fff7"
				\ ]
endif
if has('nvim')
	let g:terminal_color_0 = "#090a18" " maybe background
	let g:terminal_color_1 = "#edf2f4" " ...
    let g:terminal_color_2 = "#cddafd" "else, if, elseif
	let g:terminal_color_3 = "#e6ccb2" " ...
	let g:terminal_color_4 = "#b6f9c9" " NaN Inf
	let g:terminal_color_5 = "#edf2f4" " function name
	let g:terminal_color_6 = "#748cab" " false true (booleans and datatypes)
	let g:terminal_color_7 = "#a7a2c4" " comments
	let g:terminal_color_8 = "#2b1329" " background
	let g:terminal_color_9 = "#ff8fab" " macros 
	let g:terminal_color_10 = "#81b29a" " end, while, for
	let g:terminal_color_11 = "#de9b1d" " ...
	let g:terminal_color_12 = "#8ba7ea" " strings
	let g:terminal_color_13 = "#c9184a" " primary key words (function, where)
	let g:terminal_color_14 = "#da627d" " numbers
	let g:terminal_color_15 = "#f7fff7" "general code
endif

" Diffs
" -----
hi DiffAdd gui=bold guibg=#cddafd guifg=#090a18 cterm=bold ctermbg=10 ctermfg=0
hi DiffDelete gui=none guibg=#edf2f4 guifg=#090a18 cterm=none ctermbg=9 ctermfg=0
hi DiffChange gui=bold guibg=#2b1329 guifg=#a7a2c4 cterm=bold ctermbg=8 ctermfg=7
hi DiffText gui=bold guibg=#2b1329 guifg=#ff8fab cterm=bold ctermbg=8 ctermfg=1

hi diffAdded guifg=#cddafd ctermfg=2
hi diffRemoved guifg=#edf2f4 ctermfg=1
hi diffNewFile gui=none guifg=#b6f9c9 ctermfg=4
hi diffFile gui=none guifg=#e6ccb2 cterm=none ctermfg=3

hi GitGutterAdd guibg=#2b1329 guifg=#cddafd ctermbg=8 ctermfg=2
hi GitGutterChange gui=bold guibg=#2b1329 guifg=#a7a2c4 cterm=bold ctermbg=8 ctermfg=7
hi GitGutterDelete guibg=#2b1329 guifg=#edf2f4 ctermbg=8 ctermfg=1
hi GitGutterChangeDelete gui=bold guibg=#2b1329 guifg=#edf2f4 cterm=bold ctermbg=8 ctermfg=1

" Neomake
" -------
hi NeomakeError gui=none guibg=#edf2f4 guifg=#090a18 cterm=none ctermbg=1 ctermfg=0
hi NeomakeInfo gui=none guibg=#748cab guifg=#090a18 cterm=none ctermbg=6 ctermfg=0
hi NeomakeWarning gui=none guibg=#e6ccb2 guifg=#090a18 cterm=none ctermbg=3 ctermfg=0
hi NeomakeMessage gui=none guibg=#de9b1d guifg=#090a18 cterm=none ctermbg=11 ctermfg=0

hi NeomakeVirtualtextInfoDefault guifg=#da627d ctermfg=14
hi NeomakeVirtualtextMessageDefault guifg=#de9b1d ctermfg=11
hi NeomakeVirtualtextWarningDefault guifg=#e6ccb2 ctermfg=3
hi NeomakeVirtualtextErrorDefault guifg=#edf2f4 ctermfg=1

hi NeomakeStatusGood gui=none guibg=#cddafd guifg=#090a18 cterm=none ctermbg=2 ctermfg=0
hi NeomakeStatusGoodNC gui=none guibg=#2b1329 guifg=#cddafd cterm=none ctermbg=8 ctermfg=2

hi NeomakeStatColorDefault gui=none guibg=#b6f9c9 guifg=#090a18 cterm=none ctermbg=4 ctermfg=0
hi NeomakeStatColorTypeE gui=none guibg=#edf2f4 guifg=#090a18 cterm=none ctermbg=1 ctermfg=0
hi NeomakeStatColorTypeW gui=none guibg=#e6ccb2 guifg=#090a18 cterm=none ctermbg=3 ctermfg=0

" Markdown
" --------
hi MarkdownRule gui=bold guibg=#2b1329 guifg=#81b29a cterm=bold ctermbg=8 ctermfg=10

hi MarkdownHeading gui=bold guifg=#f7fff7 cterm=bold ctermfg=15
hi default link MarkdownH1 MarkdownHeading
hi default link MarkdownH2 MarkdownHeading
hi default link MarkdownH3 MarkdownHeading
hi default link MarkdownH4 MarkdownHeading
hi default link MarkdownH5 MarkdownHeading
hi default link MarkdownH6 MarkdownHeading
hi default link MarkdownHeadingDelimiter MarkdownHeading
hi default link MarkdownHeadingRule MarkdownHeading

hi MarkdownBold gui=bold guifg=#ff8fab cterm=bold ctermfg=9
hi default link MarkdownBoldDelimiter MarkdownBold

hi MarkdownItalic gui=italic guifg=#e6ccb2 cterm=none ctermfg=3
hi default link MarkdownItalicDelimiter MarkdownItalic

hi MarkdownUrl gui=underline guifg=#b6f9c9 cterm=underline ctermfg=4
hi MarkdownLinkText gui=none guifg=#8ba7ea cterm=none ctermfg=12
hi MarkdownLinkDelimiter gui=bold guifg=#f7fff7 cterm=bold ctermfg=15
hi default link MarkdownLinkTextDelimiter MarkdownLinkDelimiter

hi MarkdownCode guifg=#edf2f4 ctermfg=5
hi default link MarkdownCodeDelimiter MarkdownCode

hi MarkdownCodeBlock guifg=#f7fff7 ctermfg=15

hi MarkdownListMarker gui=none guifg=#cddafd cterm=none ctermfg=2
hi default link MarkdownOrderedListMarker MarkdownListMarker

" Linting
" -------
hi YcmErrorSection gui=undercurl guisp=#edf2f4 cterm=underline
hi YcmWarningSection gui=undercurl guisp=#e6ccb2 cterm=underline
hi SyntasticError gui=undercurl guisp=#edf2f4 cterm=underline
hi SyntasticWarning gui=undercurl guisp=#e6ccb2 cterm=underline
hi SyntasticErrorSing guifg=#090a18 guibg=#edf2f4 ctermfg=0 ctermbg=1
hi SyntasticWarningSign guifg=#090a18 guibg=#e6ccb2 ctermfg=0 ctermbg=3
