
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
 Plug 'itchyny/lightline.vim' 
 Plug 'lervag/vimtex'
 Plug 'lilydjwg/colorizer'
 Plug 'mboughaba/i3config.vim'
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
aug start
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

let g:Tex_MultipleCompileFormats='pdf,bib,pdf'
let g:vimtex_view_general_viewer = 'zathura'

set clipboard=unnamedplus

map <C-n> : NERDTreeToggle<CR>

set laststatus=2
set noshowmode 
set rnu

let g:lightline ={		
 \ 'colorscheme': 'wombat',
      \ }
