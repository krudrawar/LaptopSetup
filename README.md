# LaptopSetup

1. Install Brew
2. Install zsh
3. Install oh-my-zsh

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

3. Install plugins:

- `ZSH_CUSTOM=~/.oh-my-zsh/custom`
- `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
- `git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

4. Install npm using Brew
5. Install Pure iterm2 prompt: https://github.com/sindresorhus/pure

- `npm install --global pure-prompt`

6. Download .zshrc from this repo into `~/.zshrc`
7. Download iterm2 Snazzy Color Preset.
8. Set it iterm2 -> Preferences -> Colors -> Color Preset: Snazzy
9. Change text font to 14pt Monaco
10. Download iTerm2 Snazzy Color Preset from this repo
11. Download keymappings from this repo
12. Set iTerm2 -> Preferences -> Profiles -> Colors -> Import -> Color Preset: Snazzy
13. Set iTerm2 -> Preferences -> Profiles -> Keys -> Presets -> Import -> keymappings file
14. Install z: https://github.com/rupa/z

## fzf

- `brew install fzf`
- Download `.fzf.zsh` from this repo to `~/`
- Try Ctrl+r in terminal, it should work.

# Applications

1. f.lux
2. Rectangle
3. Alfred
