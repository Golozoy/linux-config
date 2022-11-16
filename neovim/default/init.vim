" Install plagin manager
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Install plagin
" :PluginInstall
"
call plug#begin('~/.vim/plugged')

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox

call plug#end()

"##################

" Цветовая схема
colorscheme gruvbox

" включить номерацию строк
set number
set relativenumber

" подсветка колонки и строки курсора
set cursorcolumn
set cursorline
set colorcolumn=79 " Линия ограничения длины строки

" Скрол за 7 строк до края файла
set scrolloff=7

" Поиск
set hlsearch  " Подсветка результатов поиска
set incsearch " Игнорирования регистра

" Статус бар
set laststatus=2

" Настройка табов
set tabstop=4 " Количество пробелов, которыми заметяется таб
set softtabstop=4 "  количество пробелов, которыми символ табуляции отображается при добавлении
set shiftwidth=4 " по умолчанию используется для регулирование ширины отступов в пробелах, добавляемых командами >> и <<.
set expandtab "  в режиме вставки заменяет символ табуляции на соответствующее количество пробелов.

" Перенос на другую строчку, разрываем строки
set wrap
set linebreak

"Другое
set mouse=a " Включаем мышку Shift, временно отключает мышь
set encoding=utf-8 " Кодеровка по умолчанию
set noswapfile " Отключаем свап файл
set fileformat=unix " Формат файла по умолчанию
set autoindent " копирует отступы с текущей строки при добавлении новой.
filetype indent on      " load filetype-specific indent files

" Используйте приведенную ниже группу выделения, когда требуется отображение плохих пробелов. 
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"##################

"" Мапинги
" Буфер
map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>

" Выключить подсветку результатов поиска
nnoremap ,<space> :nohlsearch<CR>

" run current script with python3 by CTRL+R in command and insert mode
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Перемещение между сплитами
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
