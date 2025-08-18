# 💤 LazyVim Custom Configuration

This repository is intended to be used as a personal configuration for **[LazyVim](https://github.com/LazyVim/LazyVim)**.

> When cloning locally, feel free to delete the `.git` directory or fork the repository for your own use.

---

## ✅ Features

- ✨ Clean and organized Neovim setup built on top of LazyVim.
- 🧠 Simplified modular structure for easy configuration.
- ⚙️ Ready for **C#, .NET** and **Node(TS/JS)** development.
- 🐞 Includes debugger support for C#.

---

## ⚙️ Requirements

- [Neovim](https://neovim.io/) installed.
- [Git](https://git-scm.com/downloads) installed.
- [.NET SDK](https://dotnet.microsoft.com/) properly configured.
- [Node and NPM](https://github.com/nvm-sh/nvm) properly configured.
- Works best in a **Linux environment** (tested on WSL with Debian).

---

## 🚀 Getting Started

> [!WARNING]
> This setup was tested in a **Linux/WSL** environment using **Debian**. Some adjustments may be needed for other systems.

# VERIFICAR TODO O FLUXO DE INSTALAÇÃO DE FERRAMENTAS NECESSÁRIAS

### 1. Install Neovim
```bash
brew install neovim
```

### 2. Clone this configuration
```bash
git clone https://github.com/luanAfons0/MyNeoVim ~/.config/nvim
```

### 3. Open the NeoVim to setup the initial configuration
```bash
nvim
```

### 4. Make sure Mason installed all the packages with the following command
```bash
:MasonInstallAll
```

## 🧠 Neovim Keybindings (LazyVim Config)

## 🔍 Telescope

| Mode | Key             | Description                   |
|------|-----------------|-------------------------------|
| `n`  | `<leader>sf`    | Find files                    |
| `n`  | `<leader>sg`    | Live grep                     |
| `n`  | `<leader>bb`    | Switich to other open buffer  |
| `n`  | `<leader>bd`    | Close currently open buffer |
| `n`  | `<leader>bo`    | Close all files buffers   |

## 🌴 NeoVim Tree

| Mode | Key             | Description        |
|------|-----------------|--------------------|
| `n`  | `<leader>e`     | Open tree          |
| `n`  | `a`             | Add file           |
| `n`  | `d`             | Delete file        |
| `n`  | `e`             | Edit file name     |

## 💻 Git related

| Mode | Key             | Description        |
|------|-----------------|--------------------|
| `n`  | `<leader>gp`     | Show preview of git hunk          |
| `n`  | `<leader>gt`     | Toggle git blame inline          |
| `n`  | `<leader>gi`     | Show Neogit interface          |

## ✏️ Text edit

| Mode | Key             | Description                 |
|------|-----------------|-----------------------------|
| `v`  | `{`             | Prev empty line             |
| `v`  | `}`             | Next empty line             |
| `v`  | `/`             | Find text in file           |
| `v`  | `0`             | Start of the line           |
| `v`  | `$`             | End of the line             |
| `v`  | `gc`            | Comment the code selected   |
| `v`  | `<cmd>arrow-up` | Move the selection up       |
| `v`  | `<cmd>arrow-down`| Move the selection down    |

## 😃 Utils

| Mode | Key             | Description                    |
|------|-----------------|--------------------------------|
| `N`  | `<leader>xx`    | Show list of files diagnostics |
| `N`  | `<leader>ca`    | Show list of telescope code actions |

## 💻 TMUX keys

### Session related
| Key                                    | Description                                 |
|----------------------------------------|---------------------------------------------|
| `tmux`                                 | Open a new TMUX terminal                    |
| `tmux new -t <session-name>`           | Open a new TMUX terminal with specific name |
| `tmux a`                               | Attach to the last session                  |
| `tmux a -t <session-name>`             | Attach to specific session                  |
| `tmux kill-session`                    | Kill the most recent session                |
| `tmux kill-session -t <session-name>`  | Kills a specific session                    |
| `tmux kill-server`                     | Kills all sessions                          |
| `<ctrl + b + ctrl + s>`                | Save all session with ressurect             |
| `<ctrl + b + ctrl + r>`                | Reload all saved sessions with ressurect    |

### Pane related
| Key                                 | Description                     |
|-------------------------------------|---------------------------------|
| `<ctrl + b + d>`                    | Detach from session             |
| `<ctrl + b + %>`                    | Split pane in half vertically   |
| `<ctrl + b + ">`                    | Split pane in half horizontally |
| `<ctrl + b + <arrows>>`             | Switch between splited panes    |

### Window related
| Key                                 | Description                     |
|-------------------------------------|---------------------------------|
| `<ctrl + b + c>`                    | Create new window               |
| `<ctrl + b + n>`                    | Change the selected window      |
| `<ctrl + b + ,>`                    | Rename the selected window      |
| `<ctrl + b + w>`                    | Open list of windows            |
| `<ctrl + b + {>`                    | Open copy mode                  |
---

## 🙌 Credits

### ATUALIZAR AQUI COM OS NOVOS LINKS
- 💤 **LazyVim related**:
  * **Full LazyVim setup**: [Youtube Video](https://www.youtube.com/watch?v=GOvoKUJjc60&list=PLl0ydjOKtSazRRyvLf8eBWw83VyCZ5Njd)
  * **LazyVim 0 to IDE**: [Youtube Video](https://www.youtube.com/watch?v=N93cTbtLCIM)
- 💻 **Git integration related**:
  * **Neovim and Git: SOLVED**: [Youtube Video](https://www.youtube.com/watch?v=zOQMwWqdp9w)
  * **The Holy Grail of Neovim Git Integrations**: [Youtube Video](https://www.youtube.com/watch?v=K-FKqXj8BAQ)
- 🔥**Typescript related**:
  * **The perfect Neovim setup for Next.js (it's back)**: [YoutubeVideo](https://www.youtube.com/watch?v=8um8OYwvz3c)
  * **The (almost) perfect Neovim setup for Node.js**: [YoutubeVideo](https://www.youtube.com/watch?v=CVCBHHFXWNE&t=835s)
- 📟 **TMUX related**:
  * **TMUX tutorial**: [Youtube Video](https://www.youtube.com/watch?v=nTqu6w2wc68)
  * **TMUX guide lines**: [Page link](https://tmuxcheatsheet.com/#google_vignette)
  * **TMUX  Resurrect**: [Youtube Video](https://www.youtube.com/watch?v=sMbuGf2g7gc)

---

## 🧠 Final Notes


This configuration is tailored to my workflow and preferences, especially for the technologies that I use in my daily projects. Feel free to fork, customize, or contribute!

---
