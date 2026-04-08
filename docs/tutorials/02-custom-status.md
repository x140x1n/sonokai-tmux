# User Defined Status Line Modules

To create your own status line module that uses the sonokai theme,
all you need to do is add it to the `status-left` or `status-right` options.

You can add arbitrary things to the status line like so:

```sh
# ~/.tmux.conf

set -agF status-right "#[fg=#{@snk_black},bg=#{@snk_blue}] ##H "
```

This will append the current hostname (`#H`) to the status line with a teal
background and dark black text.

You can also use icons for styling, for example to show the used memory percentage
on MacOS:

```sh  
set -g status-right "#[bg=#{@snk_red},fg=#{@snk_black}]#[reverse]#[noreverse]󱀙  "
set -ag status-right "#[fg=#{@snk_fg},bg=#{@snk_bg_dim}] #(memory_pressure | awk '/percentage/{print $5}') "
```

![Example of the custom ram module](../../assets/ram-example.webp)

To use the status module formatting that sonokai uses, do the following:

```sh
# In ~/.tmux.conf, before the sonokai plugin has been loaded.

%hidden MODULE_NAME="my_custom_module"

set -g "@sonokai_${MODULE_NAME}_icon" " "
set -gF "@sonokai_${MODULE_NAME}_color" "#{E:@snk_purple}"
set -g "@sonokai_${MODULE_NAME}_text" "#{pane_current_command}"

source "<path to sonokai plugin>/utils/status_module.conf"

set -g status-right "#{E:@sonokai_status_application}#{E:@sonokai_status_my_custom_module}"
```
