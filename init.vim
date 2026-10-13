:set mouse=a
:set hidden
:set signcolumn=yes
:set relativenumber number
:set smarttab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set autoindent
:set clipboard=unnamedplus
let g:mapleader = " "
let g:airline_theme = 'luna'

let s:plug_path = stdpath('data') . '/site/autoload/plug.vim'
let s:marker    = stdpath('state') . '/evim-bootstrapped'

function! s:evim_install() abort
  if empty(glob(s:plug_path))
    echomsg '[Evim] Шаг 1/3: скачиваю vim-plug...'
    call mkdir(fnamemodify(s:plug_path, ':h'), 'p')
    execute 'silent! !curl -fLo ' . s:plug_path . ' --create-dirs ' .
          \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    if empty(glob(s:plug_path))
      echohl ErrorMsg
      echomsg '[Evim] Не удалось скачать vim-plug. Проверь сеть и curl.'
      echohl None
      return
    endif
    echomsg '[Evim] vim-plug установлен.'
  else
    echomsg '[Evim] Шаг 1/3: vim-plug уже на месте.'
  endif

  execute 'source' fnamemodify(stdpath('config') . '/plugins.vim', ':p')

  if !empty(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    echomsg '[Evim] Шаг 2/3: устанавливаю плагины...'
    PlugInstall --sync
  else
    echomsg '[Evim] Шаг 2/3: все плагины уже установлены.'
  endif

  let s:missing = filter(values(g:plugs), '!isdirectory(v:val.dir)')
  if !empty(s:missing)
    echohl ErrorMsg
    echomsg '[Evim] Не установились: '
          \ . join(map(copy(s:missing), 'fnamemodify(v:val.dir, ":t")'), ', ')
    echomsg '[Evim] Запусти :Evim ещё раз.'
    echohl None
    return
  endif

  echomsg '[Evim] Шаг 3/3: сохраняю маркер установки...'
  call mkdir(stdpath('state'), 'p')
  call writefile([], s:marker)

  " plug#end() пересоберёт runtimepath с учётом новых директорий
  execute 'source' fnamemodify(stdpath('config') . '/plugins.vim', ':p')

  echohl WarningMsg
  echomsg '[Evim] Установка завершена. Перезапусти Neovim.'
  echohl None
endfunction

command! Evim call s:evim_install()

execute 'source' fnamemodify(stdpath('config') . '/plugins.vim', ':p')

if filereadable(s:marker)
  if !empty(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    echohl ErrorMsg
    echomsg '[Evim] Часть плагинов отсутствует. Запусти :Evim.'
    echohl None
  else
    lua require("keymap-config")
    lua require("autopairs-config")
    lua require("toggleterm-config")
    lua require("toggleterm").setup()
    lua require("treesitter-config")
    lua require("mason").setup()
    lua require("mason-lspconfig-config")
    lua require("mason-tool-installer-config")
    lua require("conform-config")
    lua require("cmp-config")
    lua require("gitsigns-config")
  endif
else
  echohl WarningMsg
  echomsg '[Evim] Конфигурация ещё не установлена. Выполни :Evim'
  echohl None
endif
