if has('pythonx')
    pyx import sys, os, vim
    pyx sys.path.insert(0, os.environ['HOME'] + '/.vim/py')
    pyx import qualified_tag
endif

augroup tags
au BufWritePost *.hs            silent !init-tags %
au BufWritePost *.hsc           silent !init-tags %
augroup END
