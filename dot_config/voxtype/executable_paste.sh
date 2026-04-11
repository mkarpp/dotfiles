#!/bin/sh
# Auto-paste helper for voxtype on KDE Wayland.
# Detects the focused window class and picks the right paste shortcut:
#   - terminals    → Ctrl+Shift+V
#   - everything else → Ctrl+V
# Invoked from ~/.config/voxtype/config.toml via post_output_command.

wid=$(kdotool getactivewindow 2>/dev/null) || exit 0
class=$(kdotool getwindowclassname "$wid" 2>/dev/null) || exit 0

case "$class" in
    *konsole*|*yakuake*|*alacritty*|*Alacritty*|*kitty*|*foot*|*wezterm*|\
    *xterm*|*urxvt*|*gnome-terminal*|*terminator*|*tilix*|*ghostty*|*rio*)
        shortcut="ctrl+shift+v"
        ;;
    *)
        shortcut="ctrl+v"
        ;;
esac

printf 'key %s\n' "$shortcut" | dotool
