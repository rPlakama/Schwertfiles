{ pkgs, ... }:

{

  systemd.services.ryzenadj-undervolt = {
    description = " Ryzen undervolt on boot";
    wantedBy = [ "multi-user.target" ];
    after = [ "sysinit.target" ];

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.ryzenadj}/bin/ryzenadj  --set-coall=10 --slow-time=5000 --fast-limit=8000 --tctl-temp=90";

    };
  };

}
