# 🛠️ NvChad Custom Configuration

This repository is intended to be used as a personal configuration for **[NvChad](https://github.com/NvChad/NvChad)** — a Neovim framework focused on performance and modularity.

> ℹ️ **Note:** The main NvChad repo (`NvChad/NvChad`) acts as a plugin in this setup. You can import its modules easily using:
> ```lua
> require("nvchad.options")
> require("nvchad.mappings")
> ```
> When cloning locally, feel free to delete the `.git` directory or fork the repository for your own use.

---

## ✅ Features

- ✨ Clean and organized Neovim setup built on top of NvChad.
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

> ![WARNING]
> This setup was tested in a **Linux/WSL** environment using **Debian**. Some adjustments may be needed for other systems.


### 1. Install Neovim
```bash
brew install neovim
```

### 2. Clone this configuration
```bash
git clone https://github.com/luanAfons0/MyNeoVim ~/.config/nvim
nvim
```

### 3. Install C# language server
```bash
dotnet tool install --global csharp-ls
```

### 4. Install the Typescript language server
```bash
npm install -g typescript typescript-language-server
```

### 5. Install the EsLint language server
```bash
npm install -g eslint
```

### 6. Make sure mason installed all the packages with the following command
```bash
:MasonInstallAll
```

## 🧠 Neovim Keybindings (NvChad Config)

## 🔍 Telescope

| Mode | Key             | Description        |
|------|-----------------|--------------------|
| `n`  | `<leader>fa`    | Find files         |
| `n`  | `<leader>fw`    | Live grep          |
| `n`  | `<leader>fb`    | List open buffers  |
| `n`  | `<leader>fo`    | List old buffers   |

## 🌴 NeoVim Tree

| Mode | Key             | Description        |
|------|-----------------|--------------------|
| `n`  | `<leader>e`     | Find files         |
| `n`  | `a`             | Add file           |
| `n`  | `d`             | Delete file        |
| `n`  | `e`             | Edit file name     |

## ✏️ Text edit

| Mode | Key             | Description                 |
|------|-----------------|-----------------------------|
| `v`  | `{`             | Prev empty line             |
| `v`  | `}`             | Next empty line             |
| `v`  | `/`             | Find text in file           |
| `v`  | `0`             | Start of the line           |
| `v`  | `$`             | End of the line             |
| `v`  | `y`             | Yank(copy) the selection    |

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
| `<ctrl + b + {>`                    | Open copy mode            |
---

## 🙌 Credits

- 💡 **[LazyVim Starter](https://github.com/LazyVim/starter)** – NvChad’s modular inspiration was influenced by this excellent starter.
- 📺 **C# NeoVim Setup Guide:** [YouTube Video](https://www.youtube.com/watch?v=JxQb7wkvj8A)
- 🐛 **Debugging C# in NeoVim:** [YouTube Video](https://www.youtube.com/watch?v=CMZlSYYdSmU)
- 📟 **TMUX tutorial**: [Youtube Video](https://www.youtube.com/watch?v=nTqu6w2wc68)
- 📟 **TMUX guide lines**: [Page link](https://tmuxcheatsheet.com/#google_vignette)
- ✏️ **Search and replace guide**: [Youtube Video](https://www.youtube.com/watch?v=YzVmdJ41Xkg)
- 💦 **Node development support**: [Youtube Video](https://www.youtube.com/watch?v=CVCBHHFXWNE)
- 🔥 **Next and front-end related support**: [Youtube Video](https://www.youtube.com/watch?v=8um8OYwvz3c)

---

## 🧠 Final Notes


This configuration is tailored to my workflow and preferences, especially for the technologies that I use in my daily projects. Feel free to fork, customize, or contribute!

---
