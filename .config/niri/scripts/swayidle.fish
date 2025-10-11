#!/run/current-system/sw/bin/fish

swayidle -w \
    timeout 600 'systemctl suspend' \
    resume 'niri msg output * dpms on' \
    before-sleep swaylock
