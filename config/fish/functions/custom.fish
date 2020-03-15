function weather
  curl wttr.in/66209
end

function brewup
  brew update; brew upgrade; brew cask upgrade; brew prune; brew cleanup; brew cask cleanup; brew doctor; brew cask doctor
end

function natural-waves
  while true
    play -n synth brownnoise synth pinknoise mix synth sine amod (math (random 10 50)/100) 10
  end
end


