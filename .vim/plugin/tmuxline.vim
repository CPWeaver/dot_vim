let g:tmuxline_preset = {
    \ 'a'    : '❐ #S',
    \ 'b'    : '#H',
    \ 'c'    : '#(whoami)',
    \ 'win'  : ['#I', '#W'],
    \ 'cwin' : ['#I', '#W', '#F'],
    \ 'x'    : ['%I:%M %p', '%D'],
    \ 'z'    : ["Net:#(~/.tmux/plugins/tmux-online-status/scripts/online_status_icon.sh)", "Bat:#(~/.tmux/plugins/tmux-battery/scripts/battery_icon_status.sh) #(~/.tmux/plugins/tmux-battery/scripts/battery_icon_charge.sh)", "CPU:#(~/.tmux/plugins/tmux-cpu/scripts/cpu_percentage.sh)"]
    \ }

