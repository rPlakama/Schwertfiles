{ pkgs, ... }: {

services.lact.enable = true;
hardware.amdgpu.amdvlk.enable = true;
environment.systemPackages = with pkgs; [ lact ];
systemd.packages = with pkgs; [ lact ];
systemd.services.lactd.wantedBy = ["multi-user.target"];

}
