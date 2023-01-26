# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Exa to display file names
if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi

# Use powerlevel10k theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# I-sight Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias goto_ws="cd /workspaces"
alias goto_v5="goto_ws ; cd isight_main_v5_beta"
alias goto_sample="goto_ws ; cd config_sample_v5"
alias goto_base="goto_ws ; cd config_base_v5"
alias goto_test="goto_ws ; goto_v5 ; cd test/fixture"
alias isight='node server.js'
alias set_base='export APP_CONFIG_PATH=/workspaces/config_base_v5 ; echo $APP_CONFIG_PATH'
alias set_sample='export APP_CONFIG_PATH=/workspaces/config_sample_v5 ; echo $APP_CONFIG_PATH'
alias set_test='export APP_CONFIG_PATH=/workspaces/isight_main_v5_beta/test/fixture ; echo $APP_CONFIG_PATH'
alias setup_test='ENV=test make test-breakdown ; ENV=test make test-setup'
alias resetup='make breakdown ; make setup ; make create-sample-users'
alias mail_up='docker run -d -p 1080:1080 -p 1025:1025 soulteary/maildev'

#I-Sight Env Variables
export NODE_ENV=development
export APP_CONFIG_PATH=/workspaces/config_sample_v5
export APP_PLATFORM_PATH=/workspaces/isight_main_v5_beta
export DISABLE_CONFIG_BACKUP=true
export SSE_DISABLED=true
export YF_URL_SVC=http://127.0.0.1:8080
export CSRF=false
export MAX_DISK_USAGE_PERCENTAGE=96
export DEFAULT_USER_PASSWORD=123456
export MIN_JS=false
export FIELDS_MEMORY_CACHE_TTL_MS=10000
export DISABLE_ES_SNAPSHOT=true
export DISABLE_FIELD_MEMORY_CACHE_TTL=true
export POSTGRESQL=true
export INDEX_FILE_ATTACHMENTS=true
export FIELDS_MEMORY_CACHE_TTL_MS=300000
export PROXY=false
export SLEEP_TIME=0
#PDFTron
export ENABLE_PDFTRON=true
export PDFTRON_LICENSE_KEY=$CODESPACE_PDFTRON_LICENSE_KEY
# Mail
export MAIL_ENABLED=true
export MAIL_PORT=1025
export MAIL_DISABLE_STARTTLS=true
export MAIL_IGNORE_TLS=true
export MAIL_HOST=0.0.0.0
export MAIL_DISABLE_DNS_VALID=1
export MAIL_TRANSPORT=smtp
export MAILSRV_PORT=2525
export MAILSRV_DOMAIN=localhost.local
export MAIL_DISABLE_STARTTLS=true
export MAIL_OVERRIDE_RECIP=cmcewan@i-sight.com
#Geo Mapping
export ENABLE_GEO_MAPPING=true
export GEO_MAPPING_PROXY_MODE=true
export GEO_MAPPING_FRONTEND_KEY=$CODESPACE_GEOMAPPING_FRONTEND_KEY
export GEO_MAPPING_SECRET_KEY=$CODESPACE_GEOMAPPING_KEY

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH/oh-my-zsh.sh
