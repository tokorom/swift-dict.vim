" swift-dict - swift's dictionary {{{
" Version: 0.0.1
" Copyright (C) 2014 Yuta ToKoRo <https://github.com/tokorom/>
" Last Modified: April 27, 2014
" License: MIT license {{{
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
" OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
" CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
" SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" }}}

let s:spath = expand('<sfile>:p')

function! swift_dict#setup_dict_path() "{{{
  let spath = s:spath
  let s:dictpath = spath[0 : strridx(spath, 'autoload') - 1] . 'dict/swift.dict'
endfunction "}}}

function! swift_dict#configure_swift_dict() "{{{
  call swift_dict#setup_dict_path()
  autocmd FileType swift let &dictionary = s:dictpath
endfunction "}}}

function! swift_dict#configure_swift_dict_for_neocomplete() "{{{
  if !exists('g:neocomplete#sources#dictionary#dictionaries')
    let g:neocomplete#sources#dictionary#dictionaries = {}
  endif
  call swift_dict#setup_dict_path()
  let g:neocomplete#sources#dictionary#dictionaries.swift = s:dictpath
endfunction "}}}

function! swift_dict#configure_dictionary_source() "{{{
  let sources = neocomplete#helper#get_sources_list()
  if has_key(sources, 'dictionary')
    let dictionary_source = sources['dictionary']

    if !exists('dictionary_source.keyword_patterns')
      let dictionary_source.keyword_patterns = {}
    endif
    let dictionary_source.keyword_patterns.swift = '\h[ ():_0-9a-zA-Z]*'
  endif
endfunction "}}}

function! swift_dict#remove_unuse_sources_for_swift() "{{{
  let sources = neocomplete#helper#get_sources_list()
  let unuse_sources = ['member', 'tag', 'syntax', 'include', 'vim', 'omni']
  for source_name in unuse_sources
    if has_key(sources, source_name)
      let source = sources[source_name]
      if !exists('source.disabled_filetypes')
        let source.disabled_filetypes = {}
      endif
      let source.disabled_filetypes.swift = 1
    endif
  endfor
endfunction "}}}

" Fin. "{{{
" __END__
" vim: foldmethod=marker
