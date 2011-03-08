if has("spell")
    " Les dictionnaires seront telecharges automatiquement si le repertoire ~/.vim/spell existe
    if !filewritable($HOME."/.vim/spell")
        call mkdir($HOME."/.vim/spell", "p")
    endif
    set spellsuggest=10 " La commande z= affiche des suggestions, je n'en veux que 10 pour ne pas surcharger l'écran
    " On regle les touches d'activation manuelle de la correction orthographique
    noremap ,sf :setlocal spell spelllang=fr <CR>
    noremap ,se :setlocal spell spelllang=en <CR>
    noremap ,sn :setlocal nospell <CR>
    " On active automatiquement le mode spell pour les fichiers texte et LaTeX
    autocmd BufEnter *.txt,*.tex setlocal spell
    autocmd BufEnter *.txt,*.tex setlocal spelllang=fr
endif