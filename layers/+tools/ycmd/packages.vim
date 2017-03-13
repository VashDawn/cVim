
MP 'rdnetto/YCM-Generator',  { 'on': ['YcmGenerateConfig', 'CCGenerateConfig'], 'branch': 'stable' }

function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status ==# 'installed' || a:info.force
        if !g:WINDOWS
            !./install.py --clang-completer
        else
            !python ./install.py --clang-completer
    endif
endfunction

MP 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'for': ['c', 'cpp', 'python', 'vim', 'js', 'go', 'sh'] }

" " Load YCM for specific filetypes
" function! s:invoke_ycm()
"     let l:supported = ['c', 'cpp', 'python', 'vim', 'js', 'go', 'sh']
"     let l:cur_ft = &filetype
"     if index(l:supported, l:cur_ft) > -1
"         call plug#load('YouCompleteMe')
"     endif
" endfunction
" 
" augroup LOAD_YCM
"     autocmd!
"     if !g:WINDOWS
"         autocmd InsertEnter * call s:invoke_ycm() | autocmd! LOAD_YCM
"     endif
" augroup END
