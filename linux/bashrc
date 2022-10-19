# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bash/powerline.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/will/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/will/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/will/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/will/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/openjdk/OpenJDK16U-jdk_x64_linux_hotspot_16.0.1_9/jdk-16.0.1+9/bin:$PATH"
export JAVA_HOME="$HOME/openjdk/OpenJDK16U-jdk_x64_linux_hotspot_16.0.1_9/jdk-16.0.1+9"

# export PATH="$HOME/openjdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9/jdk-11.0.11+9/bin:$PATH"
# export JAVA_HOME="$HOME/openjdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9/jdk-11.0.11+9"

export PATH="$HOME/servers/wildfly-23.0.2.Final/bin:$PATH"

export PATH="$HOME/node/node-v14.17.6-linux-x64/bin:$PATH"

export PATH="$HOME/openjdk/apache-maven-3.8.2-bin/apache-maven-3.8.2/bin:$PATH"

ulimit -n 4096
. <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
