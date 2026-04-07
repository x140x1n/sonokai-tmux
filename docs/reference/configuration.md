## Configuration Reference

<img src="../../assets/structure.svg" style="background: #eff1f5" />

This is a diagram of how the theme is split between its components.

### Top Level Options

| Option               | Effect                                                                         |
| -------------------- | ------------------------------------------------------------------------------ |
| `@sonokai_flavor` | Sets the sonokai flavor, one of "shusia, andromeda, atlantis, maia, espresso", "shusia, andromeda, atlantis, maia, espresso", "shusia, andromeda, atlantis, maia, espresso", or "default". |

### Status Line

| Option                        | Effect                                        |
| ----------------------------- | --------------------------------------------- |
| @sonokai_status_background | Sets the background color of the status line. |

- `default` will use the color from the selected theme
- `none` will make the status bar transparent
- use hex color codes for other colors or a theme color (`#{@thm_<color>}`)

### Window

The plugin comes with three window styles built in, these can be customized by
setting the `@sonokai_window_status_style` option. The default is `basic`.

| Option    | Effect                                                                   | Preview                                                |
| --------- | ------------------------------------------------------------------------ | ------------------------------------------------------ |
| `basic`   | Simple styling with blocks.                                              | ![window basic](../../assets/window-basic.webp)           |
| `rounded` | Each window is separated with rounded separators.                        | ![window rounded style](../../assets/window-rounded.webp) |
| `slanted` | Each window is separated with slanted separators.                        | ![window slanted style](../../assets/window-slanted.webp) |
| `custom`  | Custom separators are used. This is required to override the separators! |                                                        |
| `none`    | Styling of the window status is completely disabled.                     | ![window no styling](../../assets/window-none.webp)       |

If you want to change the active color to something else (the default is mauve),
use the following. For example to use lavender:

```bash
set -g @sonokai_window_current_number_color "#{@thm_lavender}"
```

<details>

<summary>Customising the separators</summary>

Add the following,
setting whatever values you'd like for the separators:

```bash
set -g @sonokai_window_status_style "custom"
set -g @sonokai_window_left_separator ""
set -g @sonokai_window_middle_separator ""
set -g @sonokai_window_right_separator ""
```

</details>

### Menu

**Set the menu selected style:**

```sh
# Use a value compatible with the standard tmux `menu-selected-style`
set -g @sonokai_menu_selected_style "fg=#{@thm_surface_0},bg=#{@thm_yellow}"
```

### All options and their defaults

```bash
# Menu styling options
set -g @sonokai_menu_selected_style "fg=#{@thm_fg},bold,bg=#{@thm_overlay_0}"

# Pane styling options
set -g @sonokai_pane_status_enabled "no" # set to "yes" to enable
set -g @sonokai_pane_border_status "off" # set to "yes" to enable
set -g @sonokai_pane_border_style "fg=#{@thm_overlay_0}"
set -g @sonokai_pane_active_border_style "##{?pane_in_mode,fg=#{@thm_lavender},##{?pane_synchronized,fg=#{@thm_mauve},fg=#{@thm_lavender}}}"
set -g @sonokai_pane_left_separator "█"
set -g @sonokai_pane_middle_separator "█"
set -g @sonokai_pane_right_separator "█"
set -g @sonokai_pane_color "#{@thm_green}"
set -g @sonokai_pane_background_color "#{@thm_surface_0}"
set -g @sonokai_pane_default_text "##{b:pane_current_path}"
set -g @sonokai_pane_default_fill "number"
set -g @sonokai_pane_number_position "left" # right, left

set -g @sonokai_window_status_style "basic" # basic, rounded, slanted, custom, or none
set -g @sonokai_window_text_color "#{@thm_surface_0}"
set -g @sonokai_window_number_color "#{@thm_overlay_2}"
set -g @sonokai_window_text " #T"
set -g @sonokai_window_number "#I"
set -g @sonokai_window_current_text_color "#{@thm_surface_1}"
set -g @sonokai_window_current_number_color "#{@thm_mauve}"
set -g @sonokai_window_current_text " #T"
set -g @sonokai_window_current_number "#I"
set -g @sonokai_window_number_position "left"
set -g @sonokai_window_flags "none" # none, icon, or text
set -g @sonokai_window_flags_icon_last " 󰖰" # -
set -g @sonokai_window_flags_icon_current " 󰖯" # *
set -g @sonokai_window_flags_icon_zoom " 󰁌" # Z
set -g @sonokai_window_flags_icon_mark " 󰃀" # M
set -g @sonokai_window_flags_icon_silent " 󰂛" # ~
set -g @sonokai_window_flags_icon_activity " 󱅫" # #
set -g @sonokai_window_flags_icon_bell " 󰂞" # !
# Matches icon order when using `#F` (`#!~[*-]MZ`)
set -g @sonokai_window_flags_icon_format "##{?window_activity_flag,#{E:@sonokai_window_flags_icon_activity},}##{?window_bell_flag,#{E:@sonokai_window_flags_icon_bell},}##{?window_silence_flag,#{E:@sonokai_window_flags_icon_silent},}##{?window_active,#{E:@sonokai_window_flags_icon_current},}##{?window_last_flag,#{E:@sonokai_window_flags_icon_last},}##{?window_marked_flag,#{E:@sonokai_window_flags_icon_mark},}##{?window_zoomed_flag,#{E:@sonokai_window_flags_icon_zoom},} "

# Status line options
set -g @sonokai_status_left_separator ""
set -g @sonokai_status_middle_separator ""
set -g @sonokai_status_right_separator "█"
set -g @sonokai_status_connect_separator "yes" # yes, no
set -g @sonokai_status_fill "icon"
set -g @sonokai_status_module_bg_color "#{@thm_surface_0}"
```
