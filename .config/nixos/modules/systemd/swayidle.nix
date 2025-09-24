{ pkgs, ... }:

{

  systemd.services.swayidle = {
    description = "Swayidle";
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];


    serviceConfig = {
      ExecStart = "${pkgs.swayidle}/bin/swayidle timeout 601 'niri msg action power-off-monitors' timeout 600 'hyprlock -f' before-sleep 'hyprlock -f'";
      Restart = "on-failure";

    };
  };

}
