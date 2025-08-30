<div align="center">
<p>
    <a>
      <img alt="Linux" src="https://img.shields.io/badge/Linux-%23.svg?style=flat-square&logo=linux&color=FCC624&logoColor=black" />
    </a>
    <a>
      <img alt="macOS" src="https://img.shields.io/badge/macOS-%23.svg?style=flat-square&logo=apple&color=000000&logoColor=white" />
    </a>
    <a>
      <img alt="Windows" src="https://img.shields.io/badge/Windows-%23.svg?style=flat-square&logo=windows&color=0078D6&logoColor=white" />
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.11.3-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
    </a>
    <a href="https://github.com/jdhao/nvim-config/search?l=vim-script">
      <img src="https://img.shields.io/github/languages/top/jdhao/nvim-config" alt="Top languages"/>
    </a>
    <a href="https://github.com/jdhao/nvim-config/graphs/commit-activity">
      <img src="https://img.shields.io/github/commit-activity/m/jdhao/nvim-config?style=flat-square" />
    </a>
    <a href="https://github.com/jdhao/nvim-config/graphs/contributors">
      <img src="https://img.shields.io/github/contributors/jdhao/nvim-config?style=flat-square" />
    </a>
    <a>
      <img src="https://img.shields.io/github/repo-size/jdhao/nvim-config?style=flat-square" />
    </a>
    <a href="https://github.com/jdhao/nvim-config/blob/master/LICENSE">
      <img src="https://img.shields.io/github/license/jdhao/nvim-config?style=flat-square&logo=GNU&label=License" alt="License"/>
    </a>
    <a href="https://deepwiki.com/jdhao/nvim-config">
      <img src="https://deepwiki.com/badge.svg" alt="deepwiki"/>
    </a>
</p>
</div>

# Introduction

This repo hosts my Nvim configuration for Linux, macOS, and Windows.
`init.lua` is the config entry point for terminal Nvim,
and `ginit.vim` is the additional config file for [GUI client of Nvim](https://github.com/neovim/neovim/wiki/Related-projects#gui).

My configurations are heavily documented to make it as clear as possible.
While you can clone the whole repository and use it, it is not recommended though.
Good configurations are personal. Everyone should have his or her unique config file.
You are encouraged to copy from this repo the part you want and add it to your own config.

To reduce the possibility of breakage, **this config is only maintained for [the latest nvim stable release](https://github.com/neovim/neovim/releases/tag/stable).
No effort is spent on maintaining backward compatibility.**

# Install and setup

See [doc here](docs/README.md) on how to install Nvim's dependencies, Nvim itself,
and how to set up on different platforms (Linux, macOS, and Windows).

# Features #

+ Plugin management via [Lazy.nvim](https://github.com/folke/lazy.nvim).
+ Code, snippet, word auto-completion via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
+ Language server protocol (LSP) support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Git integration via [vim-fugitive](https://github.com/tpope/vim-fugitive).
+ Better escaping from insert mode via [better-escape.vim](https://github.com/nvim-zh/better-escape.vim).
+ Ultra-fast project-wide fuzzy searching via [fzf-lua](https://github.com/ibhagwan/fzf-lua).
+ Faster code commenting via [vim-commentary](https://github.com/tpope/vim-commentary).
+ Faster matching pair insertion and jump via [nvim-autopairs](https://github.com/windwp/nvim-autopairs).
+ Smarter and faster matching pair management (add, replace or delete) via [vim-sandwich](https://github.com/machakann/vim-sandwich).
+ Fast buffer jump via [hop.nvim](https://github.com/phaazon/hop.nvim).
+ Powerful snippet insertion via [Ultisnips](https://github.com/SirVer/ultisnips).
+ Beautiful statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
+ File tree explorer via [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua).
+ Better quickfix list with [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf).
+ Show search index and count with [nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens).
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim).
+ Asynchronous code execution via [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim).
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ Code editing using true nvim inside browser via [firenvim](https://github.com/glacambre/firenvim).
+ Beautiful colorscheme via [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material) and other colorschemes.
+ Markdown writing and previewing via [vim-markdown](https://github.com/preservim/vim-markdown) and [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim).
+ LaTeX editing and previewing via [vimtex](https://github.com/lervag/vimtex)
+ Animated GUI style notification via [nvim-notify](https://github.com/rcarriga/nvim-notify).
+ Tags navigation via [vista](https://github.com/liuchengxu/vista.vim).
+ Undo management via [vim-mundo](https://github.com/simnalamburt/vim-mundo)
+ Code folding with [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) and [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
+ ......

# UI Demo

For more UI demos, check [here](https://github.com/jdhao/nvim-config/issues/15).

## Start screen with dashboard-nvim

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/183256752-fb23b215-a6b8-4646-beed-9999f52d53f1.png" width="800">
</p>

## File fuzzy finding using fzf-lua

<p align="center">
<img src="https://github.com/user-attachments/assets/3199e35d-121a-487b-bfd1-58eb69b0b48a" width="800">
</p>

## Code autocompletion with nvim-cmp

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/128590006-0fc1451f-fac1-49b2-bb95-8aba21bfa44e.gif" width="800">
</p>

## Git add, commit and push via fugitive.vim

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/128590833-aaa05d53-19ef-441d-a5a9-ba1bbd3936c1.gif" width="800">
</p>

## Tags

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/128589584-4036a1a2-2e0a-4bbe-8aaf-ff8b91644648.jpg" width="800">
</p>

## Cursor jump via hop.nvim

Go to a string starting with `se`

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/139459219-8a7e6ac4-1d24-4008-a370-b56773d7cb85.gif" width="800">
</p>

## GUI-style notification with nvim-notify

<p align="center">
<img src="https://user-images.githubusercontent.com/16662357/128589873-aadb8264-1098-4834-9876-fa66a309be05.gif" width="800">
</p>

## code folding with nvim-ufo and statuscol.nvim

<p align="center">
<img src="https://github.com/user-attachments/assets/a01a56b2-7c91-43de-b305-f2fbaa81dcec" width="800">
</p>

# Shortcuts

In the following shortcuts, `<leader>` represents ASCII character `,`.

## General Shortcuts

| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `;`               | Normal/Visual | Enter command mode (replaces :)                                         |
| `H`               | Normal/Visual | Go to beginning of line (replaces ^)                                    |
| `L`               | Normal/Visual | Go to end of line (replaces g_)                                         |
| `j`/`k`           | Normal        | Move by display lines when no count given                               |
| `J`               | Normal        | Join lines without moving cursor                                         |
| `<`/`>`           | Visual        | Indent/unindent and reselect                                            |
| `c`/`C`/`cc`      | Normal        | Change without affecting register                                        |
| `<Tab>`           | Normal        | Next buffer                                                              |
| `<S-Tab>`         | Normal        | Previous buffer                                                          |
| `gb`              | Normal        | Go to buffer (forward)                                                   |
| `gB`              | Normal        | Go to buffer (backward)                                                  |
| `\\D`             | Normal        | Delete other buffers                                                     |
| `<space>o`        | Normal        | Insert blank line below                                                  |
| `<space>O`        | Normal        | Insert blank line above                                                  |
| `<Esc>`           | Terminal      | Exit terminal mode                                                       |
| `<F11>`           | Normal/Insert | Toggle spell checking                                                    |
| `<F2>`            | Normal        | Copy full file path                                                      |
| `<F3>`            | Normal        | Copy relative file path                                                  |
| `<F4>`            | Normal        | Copy file name                                                           |
| `<Alt-n>`         | Normal/Visual | Move line/selection up                                                   |
| `<Alt-t>`         | Normal/Visual | Move line/selection down                                                 |
| `<Alt-;>`         | Insert        | Add semicolon at end of line                                             |
| `<C-u>`           | Insert        | Turn word under cursor to uppercase                                      |
| `<C-t>`           | Insert        | Turn word under cursor to title case                                     |
| `<C-A>`           | Insert/Command| Go to beginning of line                                                  |
| `<C-D>`           | Insert        | Delete character to the right                                            |

## Leader Key Shortcuts (`<leader>` = `,`)

### File & Buffer Management
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>p`       | Normal        | Paste below current line                                                 |
| `<leader>P`       | Normal        | Paste above current line                                                 |
| `<leader>w`       | Normal        | Save buffer                                                              |
| `<leader>q`       | Normal        | Quit current window                                                      |
| `<leader>Q`       | Normal        | Quit nvim                                                                |
| `<leader>bd`      | Normal        | Delete current buffer                                                    |
| `<leader>y`       | Normal        | Yank entire buffer                                                       |
| `<leader>v`       | Normal        | Reselect last pasted area                                                |
| `<leader>sa`      | Normal        | Select all                                                               |
| `<leader>cd`      | Normal        | Change to current file's directory                                       |
| `<leader><space>` | Normal        | Remove trailing whitespace                                               |

### Config & Development
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>ev`      | Normal        | Edit nvim config                                                         |
| `<leader>sv`      | Normal        | Reload nvim config                                                       |
| `<leader>st`      | Normal        | Check syntax group                                                       |
| `<leader>cl`      | Normal        | Toggle cursor column                                                     |
| `<leader>cb`      | Normal        | Show cursor (blink effect)                                               |
| `<leader>f`       | Normal        | Format JSON file                                                         |

### Plugin-Specific Shortcuts

#### FZF Lua
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<C-P>`           | Normal        | Fuzzy find files                                                         |
| `<S-F>`           | Normal        | Fuzzy grep files                                                         |
| `<leader>fh`      | Normal        | Fuzzy grep help tags                                                     |
| `<leader>ft`      | Normal        | Fuzzy search buffer tags                                                 |
| `<leader>fb`      | Normal        | Fuzzy search opened buffers                                              |

#### Git (Fugitive)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>gs`      | Normal        | Git status                                                               |
| `<leader>gw`      | Normal        | Git add file                                                             |
| `<leader>gc`      | Normal        | Git commit changes                                                       |
| `<leader>gpl`     | Normal        | Git pull changes                                                         |
| `<leader>gpu`     | Normal        | Git push changes                                                         |
| `<leader>gb`      | Visual        | Git blame selected line                                                  |
| `<leader>gbn`     | Normal        | Git create new branch                                                    |
| `<leader>gf`      | Normal        | Git fetch                                                                |
| `<leader>gbd`     | Normal        | Git delete branch                                                        |
| `<leader>Gr`      | Normal        | Git checkout file                                                        |

#### Git Signs
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `}c`              | Normal        | Next hunk                                                                |
| `{c`              | Normal        | Previous hunk                                                            |
| `<leader>hp`      | Normal        | Preview hunk                                                             |
| `<leader>hb`      | Normal        | Blame hunk                                                               |
| `<leader>hs`      | Normal/Visual | Stage hunk                                                               |
| `<leader>hr`      | Normal/Visual | Reset hunk                                                               |
| `<leader>hS`      | Normal        | Stage buffer                                                             |
| `<leader>hu`      | Normal        | Undo stage hunk                                                          |
| `<leader>hR`      | Normal        | Reset buffer                                                             |
| `<leader>tb`      | Normal        | Toggle current line blame                                                |
| `<leader>gr`      | Normal        | Reset hunk                                                               |
| `<leader>hd`      | Normal        | Diff this                                                                |
| `<leader>hD`      | Normal        | Diff this (~)                                                            |
| `<leader>td`      | Normal        | Toggle deleted                                                           |

#### Yanky (Yank History)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `yp`              | Normal/Visual | Put after (yanky)                                                        |
| `P`               | Normal/Visual | Put before (yanky)                                                       |
| `[y`              | Normal        | Previous yank entry (after paste)                                       |
| `]y`              | Normal        | Next yank entry (after paste)                                           |

#### Hop (Navigation)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `f`               | Normal/Visual/Operator | Hop to 2 characters                                        |

#### Elixir Tools (LSP - in Elixir files)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>df`      | Normal        | Format document                                                          |
| `<leader>gd`      | Normal        | Open diagnostic float                                                    |
| `ed`              | Normal        | Go to definition                                                         |
| `vgt`             | Normal        | Go to definition (vertical split)                                        |
| `hgt`             | Normal        | Go to definition (horizontal split)                                      |
| `<leader>eK`      | Normal        | Hover documentation                                                      |
| `gD`              | Normal        | Go to implementation                                                     |
| `<leader>es`      | Normal        | Signature help                                                           |
| `1gD`             | Normal        | Go to type definition                                                    |
| `egr`             | Normal        | References                                                               |
| `g0`              | Normal        | Document symbols                                                         |
| `gW`              | Normal        | Workspace symbols                                                        |
| `<leader>dd`      | Normal        | Diagnostics                                                              |
| `<leader>da`      | Normal        | All diagnostics                                                          |
| `<leader>re`      | Normal        | Rename symbol                                                            |
| `<space>r`        | Normal        | Run codelens                                                             |
| `<space>fp`       | Normal        | From pipe (Elixir)                                                      |
| `<space>tp`       | Normal        | To pipe (Elixir)                                                        |
| `<space>em`       | Visual        | Expand macro (Elixir)                                                    |
| `<C-l>`           | Insert/Select | Expand snippet                                                           |

#### Telescope
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>tr`      | Normal        | LSP references                                                           |

#### File Explorer
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `,e`              | Normal        | Toggle file explorer                                                     |

#### Claude Code
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<leader>cc`      | Normal/Visual | Open Claude Code                                                         |
| `<leader>ch`      | Normal        | Open Claude Chat                                                         |
| `<leader>ca`      | Normal        | Ask Claude about current buffer                                          |

#### Org Mode (Global)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `;oa`             | Normal        | Open org agenda                                                          |
| `;oc`             | Normal        | Open org capture                                                         |

#### Org Mode (In .org files)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<Tab>`           | Normal        | Cycle heading visibility                                                 |
| `<S-Tab>`         | Normal        | Global cycle (all headings)                                             |
| `cit`             | Normal        | Change TODO state                                                        |
| `ciT`             | Normal        | Change TODO state (previous)                                             |
| `<C-Space>`       | Normal        | Toggle checkbox                                                          |
| `<<`/`>>`         | Normal        | Promote/demote current item                                              |
| `<s`/`>s`         | Normal        | Promote/demote subtree                                                   |
| `.<CR>`           | Normal        | Add new heading/item/row                                                 |
| `}`/`{`           | Normal        | Next/previous visible heading                                            |
| `]]`/`[[`         | Normal        | Forward/backward heading same level                                      |
| `g{`              | Normal        | Go up to parent heading                                                  |
| `?`               | Normal        | Show org help                                                            |

#### Org Mode (`;o` prefix)
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `;oih`            | Normal        | Insert heading (respect content)                                         |
| `;oiT`            | Normal        | Insert TODO heading                                                      |
| `;oit`            | Normal        | Insert TODO heading (respect content)                                    |
| `;oK`/`;oJ`       | Normal        | Move subtree up/down                                                     |
| `;oe`             | Normal        | Export                                                                   |
| `;o$`             | Normal        | Archive subtree                                                          |
| `;ot`             | Normal        | Set tags                                                                 |
| `;oA`             | Normal        | Toggle archive tag                                                       |
| `;oo`             | Normal        | Open at point                                                            |
| `;or`             | Normal        | Refile                                                                   |

#### Org Agenda View
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `f`/`b`           | Normal        | Later/earlier                                                            |
| `.`               | Normal        | Go to today                                                              |
| `vd`/`vw`/`vm`/`vy`| Normal       | Day/week/month/year view                                                 |
| `q`               | Normal        | Quit agenda                                                              |
| `<CR>`            | Normal        | Switch to item                                                           |
| `<Tab>`           | Normal        | Go to item                                                               |
| `J`               | Normal        | Go to specific date                                                      |
| `r`               | Normal        | Refresh agenda                                                           |
| `t`               | Normal        | Change TODO state                                                        |

#### Org Capture
| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `<C-c>`           | Normal        | Finalize capture                                                         |
| `;or`             | Normal        | Refile capture                                                           |
| `;ok`             | Normal        | Kill capture                                                             |
| `?`               | Normal        | Show capture help                                                        |

## Text Objects

| Shortcut          | Mode          | Description                                                              |
|-------------------|---------------|--------------------------------------------------------------------------|
| `iu`              | Visual/Operator| URL text object                                                         |
| `iB`              | Visual/Operator| Buffer text object                                                      |

# Custom commands

In addition to commands provided by various plugins, I have also created some custom commands for personal use.

| command      | description                                                             | example                        |
|--------------|-------------------------------------------------------------------------|--------------------------------|
| `Redir`      | capture command output to a tabpage for easier inspection.              | `Redir hi`                     |
| `Edit`       | edit multiple files at the same time, supports globing                  | `Edit *.vim`                   |
| `Datetime`   | print current date and time or convert Unix time stamp to date and time | `Datetime 12345` or `Datetime` |
| `JSONFormat` | format a JSON file                                                      | `JSONFormat`                   |
| `CopyPath`   | copy current file path to clipboard                                     | `CopyPath relative`            |

# Contributing

If you find anything that needs improving, do not hesitate to point it out or create a PR.

If you come across an issue, you can first use `:checkhealth` command provided by `nvim` to trouble-shoot yourself.
Please read carefully the messages provided by health check.

If you still have an issue, [open a new issue](https://github.com/jdhao/nvim-config/issues).

# Further readings

Some of the resources that I find helpful in mastering Nvim is documented [here](docs/nvim_resources.md).
You may also be interested in my posts on configuring Nvim:

+ My nvim notes can be found [here](https://jdhao.github.io/categories/Nvim/)
+ [Using Neovim for Three years](https://jdhao.github.io/2021/12/31/using_nvim_after_three_years/)
+ [Config nvim on Linux for Python development](https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/)
+ [Nvim config on Windows 10](https://jdhao.github.io/2018/11/15/neovim_configuration_windows/)
+ [Nvim-qt config on Windows 10](https://jdhao.github.io/2019/01/17/nvim_qt_settings_on_windows/)
