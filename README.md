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
NeoBundle 'tokorom/swift-dict.vim'

let g:swift_dict_with_neocomplete = 1
```

### with completor.vim

```vim
call swift_dict#configure_swift_dict_for_completor()
```

## Use fuzzy find

- This plugin support fuzzy find with [completor.vim](https://github.com/maralla/completor.vim) and [fzy](https://github.com/jhawthorn/fzy)

- Required: 5 or more characters token
