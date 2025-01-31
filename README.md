> **此项目已迁移至 [hugophi/nvim](https://github.com/HugoPhi/nvim)，请访问新的仓库获取最新信息和更新。**


# nvcustom - Neovim Configuration Based on NvChad 🎨

[中文文档](./README_zh.md)

`nvcustom` is a Neovim configuration customized based on the [nvchad](https://github.com/nvchad/starter) framework. It aims to provide a powerful and customizable editing experience. This configuration supports light and dark themes and comes with built-in LSP support, intelligent completion, file browsing, and other features, making it suitable for various development scenarios.

![default](./assets/light.gif)

## 🛠️ Installation Steps

### 1. Clone and Install the Project

First, clone and install the `nvchad` configuration framework:

```bash
git clone https://github.com/nvchad/starter ~/.config/nvim
```

Then, navigate to the `~/.config/nvim/lua` directory, delete the existing configuration, and clone the `nvcustom` configuration:

```bash
cd ~/.config/nvim/lua
rm -rf *
git clone https://github.com/hugophi/nvcustom.git .
```

### 2. Choose a Theme Branch 🎨

During installation, you can choose a different theme based on your preference. The project supports three theme branches: `main` (default theme), `light` (light theme), and `dark` (dark theme). You can choose and clone a branch using the following commands:

- **Default Theme (main)**:

  ```bash
  git clone -b main https://github.com/hugophi/nvcustom.git .
  ```

- **Light Theme (light)**:

  ```bash
  git clone -b light https://github.com/hugophi/nvcustom.git .
  ```

- **Dark Theme (dark)**:

  ```bash
  git clone -b dark https://github.com/hugophi/nvcustom.git .
  ```

Once done, start Neovim to load the corresponding theme configuration.

## 🔧 Core Features Configuration

### 1. `auto-mason.lua` 🚀

Automatically manages the installation and updates of Mason plugins and language servers. The following language services are auto-loaded:

| LSP/Formatter Name         | Type           | Supported Languages/Formats          |
| -------------------------- | -------------- | ------------------------------------ |
| `lua-language-server`      | LSP            | Lua                                  |
| `stylua`                   | Formatter      | Lua                                  |
| `bash-language-server`     | LSP            | Bash                                 |
| `vtsls`                    | LSP            | TypeScript, JavaScript               |
| `html-lsp`                 | LSP            | HTML                                 |
| `css-lsp`                  | LSP            | CSS                                  |
| `prettier`                 | Formatter      | HTML, CSS, JSON, YAML, Markdown      |
| `python-lsp-server`        | LSP & Formatter| Python                               |
| `basedpyright`             | LSP            | Python                               |
| `clangd`                   | LSP            | C/C++                                |
| `awk-language-server`      | LSP            | AWK                                  |
| `dockerfile-language-server`| LSP           | Dockerfile                           |
| `typst-lsp`                | LSP            | Typst                                |
| `gopls`                    | LSP            | Go                                   |
| `julia-lsp`                | LSP            | Julia                                |

### 2. `bannar.lua` 🎉

Configures a welcome banner displayed when Neovim starts, offering a clean and personalized welcome experience.

### 3. `conform.lua` ⚙️

Through the `conform` configuration, `nvcustom` provides code formatting and style checking functionality, supporting various language formatting tools. It includes support for Lua, Rust, Python, C/C++, and other languages.

### 4. `dashconfigs.lua` 🖥️

Configures Neovim's plugin dashboard and interface settings, ensuring quick access and management of frequently used features. The plugins here use "alpha-nvim", with the header separated into its own file, and buttons and footer located in the plugin folder.

### 5. `lazy.lua` ⏳

Implements a lazy loading mechanism to optimize Neovim's startup speed by loading plugins only as needed, improving overall performance.

### 6. `lspconfig.lua` 💻

Integrates LSP (Language Server Protocol) to provide intelligent completion, navigation, error suggestions, and support for multiple programming languages.

### 7. `nvtree.lua` 🌲

Configures the Neovim file tree plugin `nvim-tree`, offering a clean and efficient file browsing experience. You can customize file icons to match your personal aesthetic preferences.

## ⚙️ Configuration Files

### 1. `chadrc.lua` 🎨

This is the main configuration file for `nvchad`, responsible for theme and UI configurations. You can modify this file to customize Neovim's appearance and theme settings to fit your personal needs.

### 2. `mappings.lua` ⌨️

This file is used to set Neovim's key mappings. You can modify and add shortcut key mappings based on your preferences to enhance your editing efficiency.

### 3. `options.lua` ⚙️

This file contains configuration for global options, such as editor behavior, UI settings, and performance optimizations. You can adjust these global options to suit your needs.

## 🚀 Usage

1. Once `nvcustom` is installed and configured, simply start Neovim to begin using it.
2. All core features are enabled by default and optimized based on best practices.

## ✨ Customization

- To customize features or modify settings, refer to the [NvChad documentation](https://nvchad.com/) and the relevant plugin documentation.
- Each feature module is independently configurable, so you can adjust the configuration files in the `config` directory according to your needs.

## 🤝 Contributions

Contributions of any form are welcome. If you have suggestions or issues, please submit them via GitHub issues or pull requests.

## 📜 License

MIT License.
