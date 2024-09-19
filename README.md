# gsi-rel

1. Acesse a máquina `oulu` via RDP
2. Entre no GSA no Windows (ULR: [jurandy.net/gsa](http://jurandy.net/gsa))
3. No Windows, autenticar no GitHub
4. No Windows, acesse a URL para autenticação de dispositivos: [github.com/login/device](https://github.com/login/device)
5. Na Oulu, executar o comando: `gh auth login`
   
   1. Pressione a tecla <kdb>Enter</kbd> várias vezes até aparecer um código de 8 caracteres

7. Copiar ou digitar o código do passo 5, executado na Oulu, para a URL do passo 4, no Windows

## Criação de repositório no GitHub

Execute os seguintes comandos:

1. `gh auth status`
2. `git repo create gsi-rel`

## Criação de repositório na Oulu

Execute os seguintes comandos:

1. `type -f take`
2. `type -f takedir`
3. `take /srv/tsi5/repo/NOME`[^1]

[^1]: Substitua `NOME` por seu primeiro nome, com letras minúsculas e sem acento.


e no GitHub
