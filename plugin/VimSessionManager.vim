nmap <F2> :wa<CR>:mksession!<CR>

function! LoadSession()
  if filereadable("Session.vim")
    let a:bufNum = bufnr('$')
    if a:bufNum == 1 && bufname(1) == ""
      exec "source Session.vim\n"
    endif
  endif
endfunction

let g:LessSaveBufNum = 5
function! SaveSession()
    if filereadable("Session.vim")
        let a:bufNum = bufnr('$')
        "" save session only when buff num more then 5
        if a:bufNum > g:LessSaveBufNum 
            exec "NERDTreeClose"
            exec "mksession!"
        end
    end
endfunction

autocmd BufEnter * :call LoadSession()
autocmd VimLeave * :call SaveSession()

