# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

if [ -d "/usr/lib/jvm/java-8-oracle" ]; then
    export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
    export PATH="$JAVA_HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin:$PATH" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/opt/hadoop-2.9.2" ]; then
    export HADOOP_DIR="/opt/hadoop-2.9.2"
    export PATH="$HADOOP_DIR/bin:$HADOOP_DIR/sbin:$PATH"
    export HADOOP_CONF_DIR="$HADOOP_DIR/etc/hadoop"
    export HADOOP_CLASSPATH=$(hadoop classpath)
fi

# set PATH so it includes user's private bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
