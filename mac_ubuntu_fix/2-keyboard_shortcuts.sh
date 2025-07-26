#!/bin/bash

# Pop OS 20.04 Post-Install Customization Script
# This script removes default GNOME shortcuts and creates custom ones

echo "Starting Pop OS 20.04 customization..."

# Function to check if command was successful
check_success() {
    if [ $? -eq 0 ]; then
        echo "✓ $1"
    else
        echo "✗ Failed: $1"
    fi
}

# Install required packages
echo "Installing required packages..."
sudo apt update
sudo apt install -y dconf-editor xdotool
check_success "Package installation"

# Backup current dconf settings
echo "Creating backup of current settings..."
dconf dump /org/gnome/desktop/wm/keybindings/ > ~/gnome-keybindings-backup.txt
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > ~/media-keys-backup.txt
check_success "Settings backup created at ~/gnome-keybindings-backup.txt and ~/media-keys-backup.txt"

# Clear all existing keyboard shortcuts except Super key launcher
echo "Clearing existing keyboard shortcuts..."

# WM Keybindings - Clear most shortcuts but keep essential ones
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-move "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-resize "[]"
gsettings set org.gnome.desktop.wm.keybindings close "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings lower "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically "[]"
gsettings set org.gnome.desktop.wm.keybindings minimize "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-center "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "[]"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "[]"
gsettings set org.gnome.desktop.wm.keybindings raise "[]"
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "[]"
gsettings set org.gnome.desktop.wm.keybindings set-spew-mark "[]"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-above "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "[]"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "[]"

# Media keys - Clear most but keep volume controls
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys email "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys help "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys logout "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys search "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys stop "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys www "[]"

# Pop Shell specific shortcuts (if present)
gsettings set org.gnome.shell.extensions.pop-shell activate-launcher "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell tile-by-default "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell tile-enter "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell tile-accept "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell tile-reject "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell toggle-tiling "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-workspace-down "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-workspace-up "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-left "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-right "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-up "[]" 2>/dev/null || true
gsettings set org.gnome.shell.extensions.pop-shell pop-monitor-down "[]" 2>/dev/null || true

check_success "Cleared existing shortcuts"

# Create custom shortcuts directory
echo "Setting up custom shortcuts..."

# Create custom keybindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/']"

# Win+C -> Copy to clipboard
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Copy to Clipboard"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "xdotool key ctrl+c"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Super>c"

# Win+X -> Cut to clipboard
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "Cut to Clipboard"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "xdotool key ctrl+x"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "<Super>x"

# Win+V -> Paste from clipboard
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name "Paste from Clipboard"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command "xdotool key ctrl+v"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding "<Super>v"

# Win+Alt+Left -> Move window to left half
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name "Move Window Left Half"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command "bash -c 'eval \$(xdotool getwindowgeometry --shell \$(xdotool getactivewindow)); SCREEN_WIDTH=\$(xdpyinfo | awk \"/dimensions/{print \\\$2}\" | cut -d\"x\" -f1); xdotool getactivewindow windowsize \$((\$SCREEN_WIDTH/2)) \$HEIGHT windowmove 0 \$Y'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding "<Super><Alt>Left"

# Win+Alt+Right -> Move window to right half
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ name "Move Window Right Half"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ command "bash -c 'eval \$(xdotool getwindowgeometry --shell \$(xdotool getactivewindow)); SCREEN_WIDTH=\$(xdpyinfo | awk \"/dimensions/{print \\\$2}\" | cut -d\"x\" -f1); xdotool getactivewindow windowsize \$((\$SCREEN_WIDTH/2)) \$HEIGHT windowmove \$((\$SCREEN_WIDTH/2)) \$Y'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ binding "<Super><Alt>Right"

# Win+Left -> Home key
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ name "Home Key"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ command "xdotool key Home"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ binding "<Super>Left"

# Win+Right -> End key
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ name "End Key"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ command "xdotool key End"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ binding "<Super>Right"

check_success "Custom shortcuts created"

# Keep the Super key for launcher (this should remain active by default)
# But let's make sure it's set correctly
gsettings set org.gnome.mutter overlay-key 'Super_L'
check_success "Super key launcher preserved"

echo ""
echo "========================================="
echo "Pop OS 20.04 Customization Complete!"
echo "========================================="
echo ""
echo "New shortcuts:"
echo "  Win+C           -> Copy to clipboard"
echo "  Win+X           -> Cut to clipboard"
echo "  Win+V           -> Paste from clipboard"
echo "  Win+Alt+Left    -> Move window to left half"
echo "  Win+Alt+Right   -> Move window to right half"
echo "  Win+Left        -> Home key"
echo "  Win+Right       -> End key"
echo "  Win (alone)     -> Open launcher"
echo ""
echo "Backup files created:"
echo "  ~/gnome-keybindings-backup.txt"
echo "  ~/media-keys-backup.txt"
echo ""
echo "Please log out and log back in for all changes to take effect."
echo "Some shortcuts may require restarting GNOME Shell (Alt+F2, type 'r', press Enter)."
echo ""
echo "To restore original settings, run:"
echo "  dconf load /org/gnome/desktop/wm/keybindings/ < ~/gnome-keybindings-backup.txt"
echo "  dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/media-keys-backup.txt"