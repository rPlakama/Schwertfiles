#!/run/current-system/sw/bin/fish

echo "Starting swayidle daemon..."
swayidle -w \
    timeout 120 'systemctl suspend' \
    resume 'niri msg output * dpms on' \
    before-sleep swaylock
