" swift-dict - swift's dictionary {{{
" Version: 0.0.1
" Copyright (C) 2014 Yuta ToKoRo <https://github.com/tokorom/>
" Last Modified: April 26, 2014
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

if exists('g:loaded_swift_dict') "{{{
  finish
endif "}}}

if !exists('g:swift_dict_with_neocomplete') "{{{
  let g:swift_dict_with_neocomplete = 0
endif "}}}

call swift_dict#configure_swift_dict()

if g:swift_dict_with_neocomplete == 1
  call swift_dict#configure_swift_dict_for_neocomplete()
  call swift_dict#configure_dictionary_source()
  call swift_dict#remove_unuse_sources_for_swift()
endif

" Fin. "{{{

let g:loaded_swift_dict = 1

" __END__
" vim: foldmethod=marker
