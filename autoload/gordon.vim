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
	autocmd FileType python nnoremap <leader>r :!clear;python3 %<cr>
endfunction

function s:ChangeWinwidth(flag)
	if a:flag
		let ww=winwidth(1)+1
	else
		let ww=winwidth(1)-1
	endif
	execute "normal " . ww . "\<C-W>|"
endfunction

