version 5.1

"settings handy ..
set scrolloff=5
set autoindent backspace=2 showmode  showmatch  showcmd wrap
set laststatus=2 ruler wrapmargin=8
set shiftwidth=2 tabstop=2 expandtab joinspaces magic report=0 dict=/usr/dict/words
set bs=2 shell=bash wildchar=<TAB> incsearch
set mouse=n
set number

set enc=utf-8
set fileencoding=utf-8

"sets color of cursor according to the color of its text
set t_vs=[5%dm

set textwidth=2000

" I don't like bells .
set noerrorbells
set visualbell
set t_vb=

"  background ..I like a dark one ...
" set background=light
set background=light

" echo something on leaving .......
" au VimLeave * echo "There goes another text file!"

"syntax highlighting..
syntax on

 " correct these frequent typographical errors
 ab alos also
 ab aslo also
 ab charcter character
 ab charcters characters
 ab exmaple example
 ab shoudl should
 ab seperate separate
 ab teh the

 "shortcuts...
 ab #s #include <stdio.h>
 ab #i #include <iostream>
 ab {p public static void main(String args[]){
 ab {d (do ((i 0 (+ i 1))) ((= i
"source $VIM/macros/file_select.vim
map - :se wrapmargin=0<CR>
map + :se wrapmargin=8<CR>
map K j.
map <C-^> <C-]>
map # :e#<CR>

map <F5> :b1<CR>
map <F6> :b2<CR>
map <F7> :b3<CR>
map <F8> :b4<CR>

" god file manager
"map <F9> _ls

" kick off emax
map <F10> :!emacs -nw %<CR>:e!<CR><CR>

" exeute current line
" map <F10> "hyy@h

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <ESC>b <S-Left>
cnoremap <ESC>f <S-Right>
cnoremap <ESC><C-H> <C-W>

"-------------> Edit compressed files <-------------
:autocmd! BufReadPre,FileReadPre  	*.gz set bin
:autocmd  BufReadPost,FileReadPost	*.gz '[,']!gunzip
:autocmd  BufReadPost,FileReadPost	*.gz set nobin
:autocmd! BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
:autocmd  BufWritePost,FileWritePost	*.gz !gzip <afile>:r
:autocmd! FileAppendPre			*.gz !gunzip <afile>
:autocmd  FileAppendPre			*.gz !mv <afile>:r <afile>
:autocmd! FileAppendPost		*.gz !mv <afile> <afile>:r
:autocmd  FileAppendPost		*.gz !gzip <afile>:r

"-------------> Perl programs <-------------
:autocmd BufEnter  *.pl		set ai si cin formatoptions=croql
:autocmd BufLeave  *.pl		set nosi nocin formatoptions=tcq
:autocmd BufEnter  *.pl		set comments=b:#
:autocmd BufLeave  *.pl		set comments=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-

"-------------> C programs and header files <-------------
:autocmd BufEnter *.ll setf lex
:autocmd BufEnter *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r set ai si cin formatoptions=crql
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r set nosi nocin formatoptions=tcq
:autocmd BufEnter *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r set comments=sr:/*,mb:*,el:*/,://
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r set comments=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
:autocmd BufEnter *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r map <F1> :!man -a <cword><CR><CR>
:autocmd BufEnter *.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r map <F2> mpI/* <ESC>A */<ESC>`pj
:autocmd BufEnter *.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r map <F3> mp^3x$xxx`pj
:autocmd BufEnter *.java                   map <F2> mpI//<ESC>`pj
:autocmd BufEnter *.java                   map <F3> mp^2x`pj
:autocmd BufEnter *.java,*.l,*.ll,*.scm,*.y,*.yy,?akefile*,*.c,*.cc,*.h,*.r map <F4> :!ctags -t *.{c,cc,h}<CR>
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r unmap <F1>
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r unmap <F2>
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,*.c,*.cc,*.h,*.r unmap <F3>
:autocmd BufLeave *.java,*.l,*.ll,*.scm,*.y,*.yy,?akefile*,*.c,*.cc,*.h,*.r unmap <F4>

"-------------> TeX & LaTeX source files <-------------
:autocmd BufEnter *.tex		map! <F1> }
:autocmd BufEnter *.tex		map! <F2> {\bf 
:autocmd BufEnter *.tex		map! <F3> {\em 
:autocmd BufEnter *.tex		map! <F4> {\

"-------------> Haskell source files <-------------
:autocmd BufEnter *.gs		map <F1> :w<CR>:!gofer %<CR>
:autocmd BufLeave *.gs		unmap <F1>

:autocmd BufEnter *.tex		ab hp hyperplane
:autocmd BufEnter *.tex		ab hps hyperplanes
:autocmd BufEnter *.tex		ab hc hypercube
:autocmd BufEnter *.tex		ab hcs hypercubes
:autocmd BufEnter *.tex		ab nd n-dimensional
:autocmd BufEnter *.tex		ab kd k-dimensional
:autocmd BufEnter *.tex		ab gc graycode

"-------------> Html Files <-------------------------
  nmap  ,e :e ~/.P/
  map   ,rn :0r ~/.P/txt/New.page.form.html
  nmap  ,p :!chmod 644 %<CR>
  ab Ybr <br>
  ab Yhr <hr>
  ab Yp  <p>
  map ,me yiwi<<ESC>ea></<C-R>"><ESC>
  ab  Ycom  <!--X--><ESC>FXs
  vmap ,com v`<i<!--<ESC>`>i--><ESC>
  ab  Ybl  <blockquote></blockquote><ESC>T>i
  ab  Yb   <b>i</b><ESC>T>
  vmap ,b   "zdi<b><C-R>z</b><ESC>2F>
  ab  Ycen <center></center><ESC>T>i
  vmap ,cen "zdi<center><C-M><C-R>z<C-M></center><ESC>T>i
  ab  Ycod <code></code><ESC>T>i
  vmap ,cod "zdi<code><C-M><C-R>z<C-M></code><C-M><ESC>T>i
  ab  Yi   <i></i><ESC>T>i
  vmap ,i   "zdi<i><C-R>z</i><ESC>T>
  ab  Ytt   <tt></tt><ESC>T>i
  vmap ,tt   "zdi<tt><C-R>z</tt><ESC>T>
  ab  Ypre <pre></pre><ESC>T>i
  vmap ,pre mz:<ESC>'<O<pre><ESC>'>o</pre><ESC>`z
  ab  Yxmp <xmp></xmp><ESC>T>i
  vmap ,xmp mz:<ESC>'<O<xmp><ESC>'>o</xmp><ESC>`z
  ab  Ytd  <td></td><ESC>T>i
  vmap ,td  "zdi<td><C-R>z</td><ESC>T>i
  ab  Ytr  <tr></tr><ESC>T>i
  vmap ,tr  "zdi<tr><C-R>z</tr><ESC>T>i
  ab  Yh1 <h1></h1><ESC>T>i
  vmap ,h1 "zdi<h1><C-R>z</h1><ESC>2F>
  ab  Yh2 <h2></h2><ESC>T>i
  vmap ,h2 "zdi<h2><C-R>z</h2><ESC>2F>
  ab  Yh3 <h3></h3><ESC>T>i
  vmap ,h3 "zdi<h3><C-R>z</h3><ESC>2F>
  ab  Yh4 <h4></h4><ESC>T>i
  vmap ,h4 "zdi<h4><C-R>z</h4><ESC>2F>
  ab  Yh5 <h5></h5><ESC>T>i
  vmap ,h5 "zdi<h5><C-R>z</h5><ESC>2F>
  ab  Yh6 <h6></h6><ESC>T>i
  vmap ,h6 "zdi<h6><C-R>z</h6><ESC>2F>
  ab Yol <ol><CR><li><CR></ol><ESC>k
  ab Yul <ul><CR><li><CR></ul><ESC>k
  ab Ydl <dl><CR><CR><dt><CR><dd><CR><p><CR><CR></dl><CR><ESC>5kA
  ab Yli <li>
  ab Ydt <dt><CR><dd><CR><p><CR><ESC>kA
  ab Ydp <dt><CR><dd><C-M><p><C-M><ESC>kkkA
  ab  Yhref <a href=""></a><ESC>?""<CR>a
  vmap ,href "zdi<a href=""><C-R>z</a><ESC>F"i
  ab  Ylink <a href=""></a><ESC>?""<CR>a
  vmap ,link "zdi<a href="<C-R>z"<C-M><C-I>><C-R>z</a><ESC>F"i
  ab  Yname <a name=""></a><ESC>?""<CR>a
  vmap ,name "zdi<a name="<C-R>z"<C-M><C-I>><C-R>z</a><ESC>2F>
  ab  Yimg  <img alt="[]"<C-M>   align=<C-M>     src=""></a><ESC>?""<CR>a
  ab  Ymail <a href="mailto:"></a><ESC>?:<CR>a
  vmap ,mail "zdi<a href="mailto:<C-R>z"<C-M><C-I><C-I>><C-R>z</a><ESC>2F>
  vmap ,Mail "zdi<a href="mailto:<C-R>z"><C-R>z</a><ESC>2F>
  ab  Ynews <a href="news:"></a><ESC>?:<CR>a
  vmap ,news "zdi<a href="news:<C-R>z"><C-R>z</a><ESC>2F>
  ab  Ypage   <C-M>page:<C-I><C-M>link:<C-I><C-M>text:<C-I><ESC>kkA
  vmap ,Cblu "zdi<FONT COLOR="#0000FF"><C-R>z</FONT>
  vmap ,Cgre "zdi<FONT COLOR="#00FF00"><C-R>z</FONT>
  vmap ,Cred "zdi<FONT COLOR="#FF0000"><C-R>z</FONT>
  imap ;& &amp;
  imap ;K &copy;
  imap ;" &quot;
  imap ;< &lt;
  imap ;> &gt;
  imap \Ae &Auml;
  imap \Oe &Ouml;
  imap \Ue &Uuml;
  imap \ae &auml;
  imap \oe &ouml;
  imap \ue &uuml;
  imap \ss &szlig;
  nmap  ,= :%s/^===\(.*\)$/<h1>\1<\/h1>/c<CR>
  ab  Ycut  \| <a href="#"<C-I>></a><ESC>F#a
  vmap ,cut  "zdi<a href="#<C-R>z"<C-I>><C-R>z</a><ESC>2F>

"Class Files
augr class
au!
au bufreadpost,filereadpost *.class %!jad -noctor -ff -i -p %
au bufreadpost,filereadpost *.class set readonly
au bufreadpost,filereadpost *.class set ft=java
au bufreadpost,filereadpost *.class normal gg=G
au bufreadpost,filereadpost *.class set nomodified 
augr END

" Latex stuff
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
set cc=80

call pathogen#infect()
