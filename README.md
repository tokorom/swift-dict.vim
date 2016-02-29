neocomplete-swift-dictionary
==========================

swift keyword dictionary for vim and neocomplete

<p align="center"><img src="https://dl.dropboxusercontent.com/u/10351676/images/GitHub/swift-dict.vim.gif"/></p>

## .vimrc Samples

### .vimrc for use only swift.dict

```vim
NeoBundle 'tokorom/neocomplete-swift-dictionary'

call neocomplete_swift_dictionary#configure_swift_dict()

set complete+=k
```

### .vimrc with neocomplete

```vim
NeoBundleLazy 'tokorom/neocomplete-swift-dictionary', {'depends' : 'Shougo/neocomplete.vim', 'on_source': 'neocomplete.vim'}
```
