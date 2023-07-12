mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

$env.STARSHIP_CONFIG = $"($nu.default-config-dir)/starship.toml"
