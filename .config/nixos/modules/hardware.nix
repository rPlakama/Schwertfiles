{ ... }: 

{
  services.tlp = {
    enable = true;
    settings = {

      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
      CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";

      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;

      RADEON_POWER_PROFILE_ON_AC = "high";
      RADEON_POWER_PROFILE_ON_BAT = "low";

      RADEON_DPM_STATE_ON_AC = "performance";
      RADEON_DPM_STATE_ON_BAT = "battery";

    };
  };

 boot.kernelParams = [ "amd_pstate=passive" ];
}
