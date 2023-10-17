set shell := ["fish", "-c"]

tn NAME:
    tmux new -s {{NAME}}

tnew NAME:
    tmux new -s {{NAME}} -c (find ~ -type d | fzf)

tlist:
    tmux list-sessions

ta:
    tmux a

cds:
    cd (find ~ -type d | fzf)

edit:
 vim ~/justfile

main-go := '
package main

import("fmt")

func main() {
    fmt.Println("Hello World!")
}
'

[no-cd]
ginit NAME:
    mkdir {{NAME}}
    cd {{NAME}}; go mod init {{NAME}}
    cd {{NAME}}; echo '{{main-go}}' > main.go
    cd {{NAME}}; go fmt

