
#!/usr/bin/env bash

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew has installed successfully"
else
    echo "Updating Homebrew"
    # Make sure we’re using the latest Homebrew.
    brew update
    # Upgrade any already-installed formulae.
    brew upgrade
fi

# Messengers
brew install --cask telegram-desktop
brew install --cask whatsapp
brew install --cask slack
brew install --cask zoom

# Browsers
brew install --cask chromium

# Programming languages
brew install openjdk@11
brew install node
brew install maven
brew install gradle

# IDE, text editors
brew install --cask intellij-idea
brew install neovim
brew install --cask visual-studio-code

# Virtualization and cloud tools
brew install --cask docker
brew install kubectl
brew install helm
brew install awscli
brew install --cask lens

# Tools
brew install --cask keepassxc

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &
wait