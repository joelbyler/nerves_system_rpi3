use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi3, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "https://github.com/joelbyler/nerves_system_rpi3_ap/releases/download/v0.6.0_ap/nerves_system_rpi3_ap.tar.gz"
  ],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "rpi3-ap-busybox.config",
      "linux-4.1.defconfig",
      "fwup.conf",
      "cmdline.txt",
      "config.txt",
      "post-createfs.sh"
    ]
  ]
