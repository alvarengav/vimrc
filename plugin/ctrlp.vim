

"ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

map <c-c><c-p> :CtrlP .<CR>
