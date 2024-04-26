set nocompatible " 오리지날 VI와 호환하지 않음
set autoindent " 자동 들여쓰기
set cindent " C 프로그래밍용 자동 들여쓰기
set smartindent " 스마트한 들여쓰기
set wrap " 화면 밖에서 자동 줄바꿈
set lbr " 자동 줄바꿈 단어 크기로
set nowrapscan " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup " 백업 파일을 안만듬
set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4 " 자동 들여쓰기 4칸
set number " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8 " 터미널 인코딩
set expandtab " 탭대신 스페이스
set hlsearch " 검색어 강조, set hls 도 가능
set ignorecase " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4 " 탭을 4칸으로
set incsearch " 키워드 입력시 점진적 검색
filetype indent on " 파일 종류에 따른 구문강조
set backspace=eol,start,indent " 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'tpope/vim-fugitive' " git 연동 플러그인
Plugin 'L9'
Plugin 'bling/vim-airline' " Vim Status

Plugin 'The-NERD-tree'  " 파일 탐색기
Plugin 'AutoComplPop'   " 자동 완성 기능(Ctrl + p)
Plugin 'taglist-plus'   " 열려있는 소스파일의 클래스, 함수, 변수 정보 창

Plugin 'scrooloose/syntastic' " 문법 체크

" HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Shell Script
Plugin 'sh.vim'
Plugin 'bsh.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'

" NodeJS
Plugin 'node.js'

" Colorscheme
Plugin 'morhetz/gruvbox'

call vundle#end()

let NERDTreeWinPos = "left"
nmap <F2> :NERDTree<CR>
nmap <F3> :TlistToggle<CR>

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_WinWidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

let g:airline#extensions#tabline#enable = 1
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

set background=dark

syntax on
colorscheme gruvbox

"

" :PluginList
" :PluginInstall
" :PluginUpdate
" :PluginSearch
" :PluginClean
"
