<!-- markdownlint-disable -->
<h3 align="center">
 Sonokai for <a href="https://github.com/tmux/tmux">Tmux</a>
</h3>

<p align="center">
 High Contrast & Vivid Color Scheme based on Monokai Pro
</p>

<p align="center">
    <a href="https://github.com/x140x1n/sonokai-tmux/stargazers"><img src="https://img.shields.io/github/stars/x140x1n/sonokai-tmux?colorA=2c2e34&colorB=9ed072&style=for-the-badge"></a>
    <a href="https://github.com/x140x1n/sonokai-tmux/issues"><img src="https://img.shields.io/github/issues/x140x1n/sonokai-tmux?colorA=2c2e34&colorB=f39660&style=for-the-badge"></a>
    <a href="https://github.com/x140x1n/sonokai-tmux/contributors"><img src="https://img.shields.io/github/contributors/x140x1n/sonokai-tmux?colorA=2c2e34&colorB=76cce0&style=for-the-badge"></a>
</p>

<p align="center">
  Based on <a href="https://github.com/sainnhe/sonokai">Sonokai</a> by sainnhe
</p>
<!-- markdownlint-enable -->

## Variants

Sonokai offers 6 beautiful variants:

- **Default** - The original Sonokai style
- **Shusia** - Based on Monokai Pro
- **Andromeda** - Inspired by Andromeda theme with blue undertones
- **Atlantis** - Cool cyan-focused variant
- **Maia** - Teal/cyan accent variant
- **Espresso** - Warm brown tones variant

## Installation

In order to have the icons displayed correctly please use/update your favorite
[nerd font](https://www.nerdfonts.com/font-downloads).
If you do not have a patched font installed, you can override or remove any
icon. Check the [documentation](./docs/reference/configuration.md) on the
options available.

### Manual (Recommended)

This method is recommended as TPM has some issues with name conflicts.

<!-- x-release-please-start-version -->

1. Clone this repository to your desired location (e.g.
   `~/.config/tmux/plugins/sonokai`).

   ```bash
   mkdir -p ~/.config/tmux/plugins/sonokai
   git clone https://github.com/x140x1n/sonokai-tmux.git ~/.config/tmux/plugins/sonokai/tmux
   ```

1. Add the following line to your `tmux.conf` file:
   `run ~/.config/tmux/plugins/sonokai/tmux/sonokai.tmux`.
1. Reload Tmux by either restarting or reloading with `tmux source ~/.tmux.conf`.
<!-- x-release-please-end -->

Check out what to do next in the "[Getting Started Guide](./docs/tutorials/01-getting-started.md)".

### TPM

<!-- x-release-please-start-version -->

1.  Install [TPM](https://github.com/tmux-plugins/tpm)
1.  Add the Sonokai plugin:

    ```bash
    set -g @plugin 'x140x1n/sonokai-tmux'
    # ...alongside
    set -g @plugin 'tmux-plugins/tpm'
    ```

1.  (Optional) Set your preferred variant, it defaults to `"default"`:

    ```bash
    set -g @sonokai_flavor 'default' # default, shusia, andromeda, atlantis, maia or espresso
    ```

    <!-- x-release-please-end -->

> [!IMPORTANT]
> You may have to run `~/.config/tmux/plugins/tpm/bin/clean_plugins`
> if upgrading from an earlier version.

### For TMUX versions prior to 3.2

This plugin uses features that were only introduced into tmux in version 3.2.
If you are using a version earlier than this, you can still have lovely
sonokai colors, the installation method just looks a little different.

```sh
# In your ~/.tmux.conf

# Add the colors from the palette. Check the themes/ directory for all options.

# Some basic sonokai default colors.
set -g @snk_bg "#2c2e34"
set -g @snk_surface_1 "#363944"
set -g @snk_fg "#e2e2e3"
set -g @snk_purple "#b39df3"
set -g @snk_crust "#181819"

# status line
set -gF status-style "bg=#{@snk_bg},fg=#{@snk_fg}"

# windows
set -gF window-status-format "#[bg=#{@snk_surface_1},fg=#{@snk_fg}] ##I ##T "
set -gF window-status-current-format "#[bg=#{@snk_purple},fg=#{@snk_crust}] ##I ##T "
```

## Recommended Default Configuration

This configuration shows some customisation options, that can be further
extended as desired.

### With TPM

```bash
# ~/.tmux.conf

# Options to make tmux more pleasant
set -g mouse on
set -g default-terminal "tmux-256color"

# Configure the sonokai plugin
set -g @sonokai_flavor "default"
set -g @sonokai_window_status_style "rounded"
set -g @plugin 'x140x1n/sonokai-tmux'

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@sonokai_status_application}"
set -ag status-right "#{E:@sonokai_status_session}"

# Run TPM (keep this at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

### With Manual Installation

```bash
# ~/.tmux.conf

# Options to make tmux more pleasant
set -g mouse on
set -g default-terminal "tmux-256color"

# Configure the sonokai plugin
set -g @sonokai_flavor "default"
set -g @sonokai_window_status_style "rounded"

# Load sonokai (manual installation)
run ~/.config/tmux/plugins/sonokai/tmux/sonokai.tmux

# Make the status line pretty and add some modules
set -g status-right-length 100
set -g status-left-length 100
set -g status-left ""
set -g status-right "#{E:@sonokai_status_application}"
set -ag status-right "#{E:@sonokai_status_session}"
```

## Documentation

### Guides

- [Getting Started](./docs/tutorials/01-getting-started.md)
- [Custom Status Line Segments](./docs/tutorials/02-custom-status.md)
- [Troubleshooting](./docs/guides/troubleshooting.md)

### Reference

- [Status Line](./docs/reference/status-line.md)
- [Configuration Options Reference](./docs/reference/configuration.md)

## 💝 Thanks to

- [sainnhe](https://github.com/sainnhe) - Creator of the Sonokai color scheme
- [catppuccin/tmux](https://github.com/catppuccin/tmux) - Original tmux plugin this is based on
- [Pocco81](https://github.com/Pocco81)
- [vinnyA3](https://github.com/vinnyA3)
- [rogeruiz](https://github.com/rogeruiz)
- [kales](https://github.com/kjnsn)

&nbsp;

<!-- markdownlint-disable -->
<p align="center">
<a href="https://github.com/x140x1n/sonokai-tmux/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=e2e2e3&colorA=2c2e34&colorB=9ed072"/></a></p>
<!-- markdownlint-enable -->
