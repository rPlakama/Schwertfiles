#!/run/current-system/sw/bin/fish
cd ~

while true
    set music (fd --full-path ~/download/ -d 3 | fzf)
    if test -z "$music"
        break
    end
    mpv --no-save-position-on-quit "$music"
end

# Talve no futuro você venha visitar esse script. Segue aqui uma curta explicação de como ele funciona. Após se redicionar para o home. O script, ele inicia uma função de:
#
# Enquanto verdade, vai ter uma variavel "Musica" que apanhará o resultado do fd selecionado pelo fzf (Com profundidade 3 de arquivos) e claro, um teste após isso se o arquivo existe, com isso, a função true quebra, e incia-se o mpv com a favariavel musica para ser utilizada, já que ela é o resultado da path.
#
# O fluxograma é assim: 
#
# > Entra para o home
# > Cria uma variavel, guarda nela o resultado do path selecionado pelo fzf com ajuda do fd
# > e testa essa path, e após isso, executa essa variavel.
