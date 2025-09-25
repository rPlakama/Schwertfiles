{ pkgs, ... }:

{
  services.swayidle = {
    enable = true;
    package = pkgs.swayidle;

    # A sequência de ações combinada e em ordem lógica
    timeouts = [
      # 1. Notificação (da segunda config): Avisa 5 segundos antes de travar
      # 2. Trava a tela (da primeira config)
      {
        timeout = 300; # 5 minutes
        command = "${pkgs.hyprlock}/bin/hyprlock";
      }
      # 3. Desliga a tela (da primeira config)
      {
        timeout = 600; # 10 minutes
        command = "${pkgs.niri}/bin/niri msg output * dpms off";
        resumeCommand = "${pkgs.niri}/bin/niri msg output * dpms on";
      }
      # 4. Suspende o sistema (da segunda config): Acontece após a tela desligar
      {
        timeout = 900; # 15 minutes
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];

    # Evento de segurança para travar a tela antes de suspender manualmente
    events = [
      {
        event = "before-sleep";
        command = "${pkgs.hyprlock}/bin/hyprlock";
      }
    ];
  };
}
