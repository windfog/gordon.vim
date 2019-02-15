"设置插件NERDTree的个性化配置
function! gordon#SettingNerdTree()
	nnoremap <silent> + :call <SID>ChangeWinwidth(1)<CR>
	nnoremap <silent> - :call <SID>ChangeWinwidth(0)<CR>
	map <silent> <c-n> :NERDTreeToggle<cr>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endfunction

"设置ultisnips 的个性化配置
function! gordon#SettingUltisnips()
	"触发ultisnips
	let g:UltiSnipsExpandTrigger="<leader><leader>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	let g:UltiSnipsEditSplit="vertical"
endfunction

function! gordon#SettingOneKeyRun()
	autocmd FileType python nnoremap <leader>r :!clear \| python %<CR>
	autocmd FileType python nnoremap <leader>3r :!clear \| python3 %<CR>
	autocmd FileType go     nnoremap <leader>r :!clear \| go run %<CR>
endfunction
function! gordon#SettingQuickConfig()
	nnoremap <leader>ev :e $MYVIMRC<CR>
	nnoremap <leader>sv :source $MYVIMRC \| bdelete .vimrc <CR>
endfunction
function! gordon#SettingCopy()
	vnoremap <leader>c :<CR>:let temp=@" \| execute "normal! vgvy" \| call system("pbcopy",@") \| let @"=temp<CR>
endfunction
function! gordon#SettingVimGo()
	let g:go_fmt_command = "goimports"
	let g:go_version_warning = 0
	autocmd FileType go inoremap <silent><leader>i <ESC>:execute "GoImport " . expand('<cword>')<CR>a
endfunction

function s:ChangeWinwidth(flag)
	if a:flag
		let ww=winwidth(1)+1
	else
		let ww=winwidth(1)-1
	endif
	execute "normal " . ww . "\<C-W>|"
endfunction

