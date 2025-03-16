" Vim syntax file for ONScripter-EN scripts
" Maintainer: THMprod
" Latest Revision: March 16, 2025

if exists("b:current_syntax")
    finish
endif

" Syntax highlighting for ONScripter-EN

" Comments (lines starting with ;)
syn match onsComment "^\s*;.*$" contains=@Spell

" Labels (e.g., *start, *define)
syn match onsLabel "^\s*\*\w\+" contains=@NoSpell

" Keywords (ONScripter-EN commands) - Using syn match with updated regex
syn match onsKeyword "^\s*\<\(add\|alias\|allsphide\|allsp2hide\|amsp\|amsp2\|automode\|automode_time\|avi\|bar\|barclear\|bg\|bgcopy\|bgm\|bgmdownmode\|bgmfadeout\|bgmonce\|bgmstop\|break\|btn\|btnarea\|btnareaclr\|btndef\|btndown\|btnwait\|btnwait2\|caption\|cellcheck\|chvol\|click\|clickstr\|clickvoice\|cl\|cmp\|csel\|cselbtn\|cselgoto\|cseloff\|csp\|csp2\|dcur\|dcut\|dec\|delay\|dellay\|delbgm\|delete\|deletescreenshot\|dialog\|div\|draw\|drawbg\|drawbg2\|drawclear\|drawfill\|drawsp\|drawsp2\|drawtext\|dtext\|dx\|dy\|effect\|effectblank\|effectcut\|effectset\|end\|endroll\|endskip\|exbtn\|exbtn_d\|fchk\|fileexist\|filelog\|flushout\|for\|game\|getbtntimer\|getcursor\|getcursorpos\|getenter\|getextbtn\|getlog\|getmp3vol\|getpage\|getpart\|getreg\|getret\|getscreenshot\|getskip\|getspmode\|getspsize\|gettab\|gettag\|gettaglog\|gettimer\|gettext\|gettextbtn\|getversion\|getvoicevol\|getzxc\|globalon\|goto\|gotoif\|gotolabel\|human\|humanz\|if\|inc\|indent\|isdown\|isfull\|ispage\|isskip\|itoa\|itoa2\|jumpb\|jumpf\|kidokumode\|kidokuskip\|kinsoku\|labellog\|ld\|ldh\|ldx\|ldy\|lens\|lensoff\|lenstimer\|linepage\|loadgame\|logsp\|logsp2\|lookback\|lookbackbutton\|lookbackcolor\|lookbackflush\|lookbacksp\|lsp\|lsp2\|lsph\|menu_automode\|menu_full\|menu_waveoff\|menufont\|menuselectcolor\|menuselectvoice\|menusetwindow\|mode_ext\|mode_wave_demo\|monocro\|mov\|mov10\|mov3\|mov4\|mov5\|mov6\|mov7\|mov8\|mov9\|mp3\|mp3fadeout\|mp3save\|mp3stop\|mp3vol\|msp\|msp2\|mul\|next\|notif\|nsa\|nsp\|nsp2\|numalias\|ofscopy\|ofscpy\|ofssp\|ofssp2\|play\|playonce\|playstop\|preload\|print\|puttext\|quake\|quakex\|quakey\|readjump\|rem\|repage\|reset\|return\|rgosub\|rmode\|rnd\|rubyoff\|rubyon\|savegame\|saveoff\|saveon\|savepoint\|savescreenshot\|select\|selectbtn\|selectcolor\|selectvoice\|setcursor\|setwindow\|setwindow2\|setwindow3\|setwindow4\|sin\|skip\|skipoff\|soundpressplg\|sp_rgb_gradation\|spbtn\|spclclk\|spstr\|sqrt\|stralias\|sub\|systemcall\|tal\|tan\|texec\|textbtnstart\|textbtnwait\|textclear\|textgosub\|texthide\|texton\|textoff\|textshow\|textspeed\|transbtn\|trap\|vsp\|vsp2\|windowback\|windowchip\|windoweffect\|defsub\)\>" contains=@NoSpell

" Strings (text between quotes)
syn match onsString '"[^"]*"' contains=@Spell

" Numbers
syn match onsNumber '\b\d+\b'

" Variables (e.g., %var)
syn match onsVariable '%\w\+'

" Hex colors (e.g., #FFFFFF)
syn match onsHexColor '#[0-9A-Fa-f]\{6\}'

" Link syntax groups to default highlight groups
hi def link onsComment Comment
hi def link onsLabel Function
hi def link onsKeyword Keyword
hi def link onsString String
hi def link onsNumber Number
hi def link onsVariable Identifier
hi def link onsHexColor Constant

let b:current_syntax = "onsyntax"