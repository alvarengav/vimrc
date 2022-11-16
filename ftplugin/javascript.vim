setlocal sw=2 sts=2

let b:ale_linters = {
			\  'javascript': glob('.eslintrc*', '.;') != '' ? [ 'eslint'] : [ 'standard'],
			\}

let b:ale_fixers = glob('.eslintrc*', '.;') != '' ? ['eslint']: ['standard']
