   " properly set to work with the Vim-related packages available in Debian.
    "debian.vim

    " Uncomment the next line to make Vim more Vi-compatible
    " NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
    " options, so any other options should be set AFTER setting 'compatible'.
    set nocompatible
	filetype off
	
	"pathogen settings
	execute pathogen#infect()
 
    " detect file type
    filetype on
    filetype plugin on

	let g:vim_markdown_frontmatter=1
    " Vim5 and later versions support syntax highlighting. Uncommenting the
    " following enables syntax highlighting by default.
   	if has("syntax")
      syntax on            " 语法高亮
    endif

    set background =dark
	set t_Co=256
	colorscheme solarized "elflord ron peachpuff defaulit
	"colorscheme desert 
	"设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下
 
    " for table mode 
	let g:table_mode_corner = '|'
	let g:table_mode_border =0
	let g:table_mode_fillchar=' '
    " If using a dark background within the editing area and syntax highlighting
    " turn on this option as well

    " Uncomment the following to have Vim jump to the last position when
    " reopening a file
 if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      "have Vim load indentation rules and plugins according to the detected filetype
      filetype plugin indent on
	"  autocmd FileType c,cpp :copen   
  endif


    " The following are commented out as they cause vim to behave a lot
    " differently from regular Vi. They are highly recommended though.

    "set ignorecase        " 搜索模式里忽略大小写
    "set smartcase        " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
    set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
    set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
    "set smartindent        " 智能对齐方式
    set tabstop=4        " 设置制表符(tab键)的宽度
    set softtabstop=4     " 设置软制表符的宽度    
    set shiftwidth=4    " (自动) 缩进使用的4个空格
    set cindent            " 使用 C/C++ 语言的自动缩进方式
    set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
    "set backspace=2    " 设置退格键可用
    set showmatch        " 设置匹配模式，显示匹配的括号
    set linebreak        " 整词换行
    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
    "set hidden " Hide buffers when they are abandoned
    set mouse=a            " Enable mouse usage (all modes)    "使用
    set number            " Enable line number    "显示行号
    "set previewwindow    " 标识预览窗口
    set history=50        " set command history to 50    "历史记录50条


    "--状态行设置--
    set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
    set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

    "--命令行设置--
    set showcmd            " 命令行显示输入的命令
    set showmode        " 命令行显示vim当前模式
    "--find setting--
    set incsearch        " 输入字符串就显示匹配点
    set hlsearch



	"folding setting--
	 set foldmethod=syntax " 用语法高亮来定义折叠
	 set foldlevel=100 " 启动vim时不要自动折叠代码
	 set foldcolumn=5 " 设置折叠栏宽度-- MiniBufferExplorer --
    
	let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
    let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
    let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
    "let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
    let g:miniBufExplModSelTarget = 1    " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

	 "-- Taglist setting --
	 let Tlist_Ctags_Cmd='ctags'   "因为我们放在环境变量里，所以可以直接执行
	 let Tlist_Use_Right_Window=1  "让窗口显示在右边，0的话就是显示在左边
	 let Tlist_Show_One_File=0     "让taglist可以同时展示多个文件的函数列表
	 let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
	 let Tlist_Exit_OnlyWindow=1   "当taglist是最后一个分割窗口时，自动推出vim 是否一直处理tags.1:处理;0:不处理
	 let Tlist_Process_File_Always=1   "实时更新tags
	 let Tlist_Inc_Winwidth=0
	
	 
	 "--- winmanager setting"
	 let g:winManagerWindowLayout='FileExplorer|TagList' " 设置我们要管理的插件
	 let g:persistentBehaviour=0 " 如果所有编辑文件都关闭了，退出vim
	 nmap wm :WMToggle<cr> 

   

	"-- QuickFix setting --
	" 按下F6，执行make clean
	map <F6> :make clean<CR><CR><CR>
	"按下F7，执行make编译程序，并打开quickfix窗口，显示编译信息
	map <F7> :make<CR><CR><CR> :copen<CR><CR>
	 " 按下F8，光标移到上一个错误所在的行
	map <F8> :cp<CR>
	" 按下F9，光标移到下一个错误所在的行
	map <F9> :cn<CR>
	"以上的映射是使上面的快捷键在插入模式下也能用
	imap <F6> <ESC>:make clean<CR><CR><CR>
    imap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
	imap <F8> <ESC>:cp<CR>
	imap <F9> <ESC>:cn<CR>
	
	"""" python setting 

	au BufNewFile,BufRead *.py
     \ set tabstop=4 |    
     \ set softtabstop=4 | 
     \ set softtabstop=4|
     \ set shiftwidth=4|
     \ set textwidth=79|
     \ set expandtab|
     \ set autoindent|
     \ set fileformat=unix|

	let python_highlight_all=1

	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	
	let g:syntastic_always_populate_loc_list =1 
	let g:syntastic_auto_loc_list =1 
	let g:syntastic_check_on_open =1
	let g:syntastic_check_on_wq =0



	"""" python debug
		

	let g:dbgPavimPort = 9009
	let g:dbgPavimBreakAtEntry = 0


	hi Normal ctermbg=NONE
