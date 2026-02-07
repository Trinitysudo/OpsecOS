# .zshrc for GhostOS
# Auto-run fastfetch on start
if [ -f /usr/bin/fastfetch ]; then
    fastfetch
fi

# Set prompt
PROMPT='%F{blue}%n@ghostos%f:%F{cyan}%~%f$ '

# Load completions
autoload -Uz compinit && compinit
