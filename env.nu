mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

mut nvc_path = "~/.config/nvim"

if $env.OS == 'Windows_NT' {
    $nvc_path = $"($env.LOCALAPPDATA)/nvim"
}

# Open nvim on config path.
alias nvc = nvim $nvc_path

$env.STARSHIP_CONFIG = $"($nu.default-config-dir)/starship.toml"
