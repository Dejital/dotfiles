alias v vim

alias l 'ls -la'

alias noise 'play -n synth brownnoise'
alias waves 'play -n synth brownnoise synth pinknoise mix synth sine amod 0.1 10'
alias whitenoise 'play -n synth whitenoise'
alias brownnoise 'play -n synth brownnoise'
alias pinknoise 'play -t sl -r48000 -c2 -n synth -1 pinknoise .1 60'

alias ambient 'play -n synth sine C3 sine C4 sine B3 sine A4 fade 0 12 8 delay 0 2 4 6 repeat 2'

# SoX audio generation cheat sheet:
# https://gist.github.com/ideoforms/d64143e2bad16b18de6e97b91de494fd
