"Install vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mhartington/oceanic-next'

call plug#end()

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on

"Настройка omnicomletion для Python (а так же для js, html и css)
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype cpp set omnifunc=cppcomplete#CompleteCPP


"mappings it is a plugin

nmap <C-n> :NERDTreeToggle<CR>

"my mapping keys

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"выполнение текущего файла
"nmap <f5> :!python3 %<cr>
nmap <f4> :!bash %<cr>
" run current script with python3 by CTRL+R in command and insert mode
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Буфер
map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>

" Выключить подсветку результатов поиска
nnoremap ,<space> :nohlsearch<CR>




" Настройки табов для Python, согласно рекоммендациям
set tabstop=4   "количество пробелов в 
set shiftwidth=4    "ширина отступов в пробелах
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

"поиск
set hlsearch
set incsearch

"статус бар
set laststatus=2

"colorscheme industry
colorscheme OceanicNext

" Автоотступ
set autoindent
set scrolloff=7

" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1

" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Включить подсветку синтаксиса

"Перенос на другую строчку, разрываем строки
set wrap
set linebreak

set nu
set rnu "relativenumber
set ruler "включаем ruler, в строке состояния
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a
set termencoding=utf-8 "Кодировка терминала
set encoding=utf-8
set fileencodings=utf8,cp1251
set noswapfile

"подсветка колонки и строки курсора
set cursorcolumn
set cursorline
set colorcolumn=79 " Линия ограничения длины строки
