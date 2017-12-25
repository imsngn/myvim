" ztxt.vim for text file
" by neman, xbeta @ www.newsmth.net
" 2005年9月2日
" http://www.newsmth.net/bbsdoc.php?board=VIM
"Last Change: 2005 Aug 9 or see file date

set lsp=5 "行距
set fdm=marker
set nonumber
"color ****************************************

" 语句的位置很重要，曾经把TxtUrl放在后面，结果不太对。
    syn case ignore	
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "syn keyword   TxtOrg    sg mgc  sap erp cnooc cnoocltd ibm oracle zyx zhangyx yxz ey q31 tsinghua tsu "把一些组织名称高亮
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syn match       TxtNum   "[0-9]"
    syn match txtComment /#.*/
    syn match	  TxtEn			 "[a-zA-Z]"
    syn match     Labela         "[+-]\+"
    syn match     Labelb         "|"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syn match     attention "/\+\*\+.\{-}\*\+/\+"
    syn match     attention2 "\(=\{1,3\}[>》]\)\@<=.\+[^ ]\(      \+|\)\@="
    syn match     attention22 "\(=\{1,3\}[>》]\)\@<=.\+$"
    syn match     attention44 "\(=\{4,\}[>》]\)\@<=[^.。]\{-}$\n.\+"
    syn match     attention3 "\(-\{1,3\}[>》]\)\@<=.\+[^ ]\(      \+|\)\@="
    syn match     attention33 "\(-\{1,3\}[>》]\)\@<=.\+$"
    syn match     attention55 "\(-\{4,\}[>》]\)\@<=[^.。]\{-}$\n.\+"
    syn match     attention66 "\(-\{-}[>》]\{2,\}\)\@<=[^.。]\{-}$\n.\+"
    syn match     attention77 "\(=\{-}[>》]\{2,\}\)\@<=[^.。]\{-}$\n.\+"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syn match     br1         "(.\{-})"
    syn match     br11         "(\_.\{-})"
	syn match     br2        "（.\{-}）"
    syn match     br22         "（\_.\{-}）"
	syn match     br3         "\[.\{-}\]"
    syn match     br33         "\[\_.\{-}\]"
	syn region    br4     start=/“/  end=/”\|$/
	syn region    br5     start=/"/  end=/"\|$/
	syn match	  br6	"《.\{-}》"
    syn match     br66  "《\_.\{-}》"
	syn match	  br7	"<<.\{-}>>"
	syn match	  br9	"<.\{-}>"
    syn match     br77  "<<\_.\{-}>>"
	syn match	  br8	"{.\{-}}"
    syn match     br88  "{\_.\{-}}"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	syn match     TxtUrl1         "http[s]\=://\S*"
	syn match     TxtUrl3         "ftp\=://\S*"
	syn match     TxtUrl4        "file\=://\S*"
	syn match     TxtUrl5        "\S*@\S*"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syn region 	  zHead1  		start=/=====================/ end=/========$/ 
    syn region    zHead2        start=/\d\+\(\.\|、\|)\|）\)\s\{2,8\}/    end=/$/
    syn match     zHead3        "[a-zA-Z]、.\+[^|X]$"
    syn match     zHead4        "[a-zA-Z][)）]\?\.\s\{2,8\}[a-zA-Z].\+[^|X]$"
    syn match     zHead5        "[a-zA-Z][)）]\s\{2,8\}[a-zA-Z].\+[^|X]$"
    syn region    zHead6       start=/i\{1,3\}[v)）][.、]\s\+/    end=/$/
    syn region    zHead7       start=/vi\{1,4\}[)）][.、]\s\+/    end=/$/
    syn region    zHead8        start=/[一二三四五六七八九十]\+[.、]/    end=/$/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi TxtOrg guifg=green  guibg=blue "gui=underline
    hi        TxtEn           guifg=#FFFFFF
    hi        TxtNum          guifg=#FFC700
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi link       TxtUrl1		Underlined    
    hi link       TxtUrl2		Underlined    "
    hi link       TxtUrl3		Underlined       "green
    hi link       TxtUrl4		Underlined       "green
    hi link       TxtUrl5		Underlined    "cyan
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi link       zHead1        special
    hi 		  zHead2		  guifg=red      guibg=#EFEBDE
    hi 		  Labela	      guifg=#FFFF00
    hi 		  Labelb	      guifg=#FFFF00
    hi 		  zHead3		  guifg=#FFFFFF   guibg=#107194
    hi 		  zHead4		  guifg=#000000   guibg=#FF4500
    hi 		  zHead5		  guifg=#000000   guibg=#EFEBAD
    hi 		  zHead6		  guifg=#000000   guibg=#DEA621
    hi 		  zHead7		  guifg=#000000   guibg=#FF8273
    hi 		  zHead8		  guifg=#000000   guibg=#F7F3DE
    "hi link		  zHead3			 special
    "hi     		  zHead3	  guifg=#F7F3DE  	 guibg=#CC00FF
    "hi     		  zHead33	  guifg=#000000  	 guibg=#90EE90
    "hi     		  zHead333	  guifg=#000000  	 guibg=#90EE90
    "hi link		  zHead4			 special
    "hi     		  zHead4	  guifg=#FF8C00  	 guibg=#99FFCC
    "hi     		  zHead44	  guifg=#FF8C00  	 guibg=#99FFCC
    "hi link		  zHead5			 special
    "hi link		  zHead6			 special

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi link br1 Include
    hi link br9 Include
    hi link br11 Include
    hi link br22 Include
    hi link br33 Include
    hi link br66 Include
    hi link br77 Include
    hi link br88 Include
	hi link br2 Include
	hi link br3 Include
	hi link br4 Include
	hi link br5 Include
	hi link br6 Include
	hi link br7 Include
	hi link br8 Include
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi link       TxtComment     Comment    "gold
    hi link       TxtComment2    Todo    "gold
    hi link       attention     Todo   "skyblue
    "hi link       attention2     Todo   "skyblue
    hi            attention2    guibg=#FF8C00
    hi            attention22    guibg=#FF8C00
    hi            attention44    guibg=#FF8C00
    hi            attention77    guibg=#FF8C00
    hi            attention66    guibg=#FF8C00
    hi            attention55    guibg=#FF8C00
    hi            attention3    guibg=#FF1C93
    hi            attention33    guibg=#FF1C93
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    let b:current_syntax = "ztxt"

