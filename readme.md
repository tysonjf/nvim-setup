Basic Keymaps

Leader = " " (space)

[window]
Move between windows <C-w> h, j, k, l

[explorer]
Toggle nvim-tree <leader>e
Open file and place cursor in file<Enter | o>
Open file without moving cursor<Tab>
Telescope project files <leader>pf
Telescope project files that are staged in git <C-p>
Telescope search word in file <leader>ps


[cursor]
Copy highlighted text to system clipboard <"+y>
Copy highlighted to buffer <y>
Copy entire line to buffer <yy>

Enter insert before blinker <i>
Enter insert before blinker <a>
Enter insert at end of line <E>

[tmux]
set -g prefix C-a
bind-key C-a send-prefix

# bind | split-window -h 
bind n split-window -h -c "#{pane_current_path}"
bind - split-window -v

bind r source-file ~/.tmux.conf

bind j resize-pane -D 5
bind k resize-pane -U 5
bind l resize-pane -R 5
bind h resize-pane -L 5




