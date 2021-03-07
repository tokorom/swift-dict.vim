swift-dict.vim
==========================

swift keyword dictionary for vim

<p align="center"><img src="https://raw.githubusercontent.com/tokorom/swift-dict.vim/assets/assets/swift_vim_complete.gif"/></p>

## .vimrc Samples

### with default complete

```vim
NeoBundle 'tokorom/swift-dict.vim'

set complete+=k
```

### with neocomplete

```vim
let g:swift_dict_with_neocomplete = 1
```

### with asyncomplete.vim

- Install [asyncomplete](https://github.com/prabirshrestha/asyncomplete.vim)
- Install [asyncomplete-dictionary](https://github.com/tokorom/asyncomplete-dictionary.vim)

```vim
call asyncomplete#register_source({
  \ 'name': 'dictionary',
  \ 'allowlist': ['*'],
  \ 'completor': function('asyncomplete#sources#dictionary#completor'),
  \ })
```
