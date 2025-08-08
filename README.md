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
- ⚙️ Ready for **C# and .NET** development.
- 🐞 Includes debugger support for C#.

---

## ⚙️ Requirements

- [Neovim](https://neovim.io/) installed.
- [Git](https://git-scm.com/downloads) installed.
- [.NET SDK](https://dotnet.microsoft.com/) properly configured.
- Works best in a **Linux environment** (tested on WSL with Debian).

---

## 🚀 Getting Started

> ⚠️ This setup was tested in a **Linux/WSL** environment using **Debian**. Some adjustments may be needed for other systems.

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

| Mode | Key             | Description        |
|------|-----------------|--------------------|
| `v`  | `{`             | Prev empty line    |
| `v`  | `}`             | Next empty line    |
| `v`  | `/`             | Find text in file  |
| `v`  | `0`             | Start of the line  |
| `v`  | `$`             | End of the line    |

---

## 🙌 Credits

- 💡 **[LazyVim Starter](https://github.com/LazyVim/starter)** – NvChad’s modular inspiration was influenced by this excellent starter.
- 📺 **C# NeoVim Setup Guide:** [YouTube Video](https://www.youtube.com/watch?v=JxQb7wkvj8A)
- 🐛 **Debugging C# in NeoVim:** [YouTube Video](https://www.youtube.com/watch?v=CMZlSYYdSmU)

---

## 🧠 Final Notes


This configuration is tailored to my workflow and preferences, especially for the technologies that I use in my daily projects. Feel free to fork, customize, or contribute!

---
