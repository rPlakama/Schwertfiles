#!/run/current-system/sw/bin/fish
#
if pgrep -x swayidle >/dev/null
    echo "swayidle is already running."
    exit 0
end

echo "Starting swayidle daemon..."

swayidle -w \
    timeout 120 hyprlock \
    timeout 300 'systemctl suspend' \
    resume 'niri msg output * dpms on' \
    before-sleep hyprlock
disown
