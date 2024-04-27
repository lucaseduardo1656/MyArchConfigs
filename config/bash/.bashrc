# My Bash <3
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Path 
export PATH="/usr/local/bin:$PATH"


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='╭─[\[\e[38;5;14m\]\u\[\e[0m\]@\[\e[38;5;14m\]\h\[\e[0m\] - \[\e[38;5;14m\]\w\[\e[0m\]]\n╰─\$ '

# Função para mover o cursor para a última linha do terminal
move_cursor_to_bottom() {
    tput cup $LINES 0
}

# Executar a função para mover o cursor para o fundo quando o prompt é exibido
PROMPT_COMMAND=move_cursor_to_bottom


neofetch
