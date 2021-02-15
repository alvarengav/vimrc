let g:ale_fix_on_save = 1
let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'python': ['pylint', 'flake8'],
            \ 'typescript': ['prettier'],
            \ 'vue': ['eslint', 'stylelint', 'vls'],
            \ 'vuejs': ['eslint', 'stylelint', 'vls'],
            \ }
let g:ale_fixers = {
            \ 'javascript': ['prettier', 'eslint'],
            \ 'python': ['black'],
            \ 'typescript': ['prettier', 'eslint', 'tslint'],
            \ 'vue': ['prettier'],
            \ 'vuejs': ['prettier'],
            \ }
