# ls aliases
alias ls="ls -F --color"
alias l="ls -lh"
alias ll="ls -lAh"
alias la="ls -A"

# easy navigating
alias ..="cd .."
alias ...="cd ../.."

alias plz="sudo"

# history alias
alias hall='history 1 -1'
alias h='history -30 -1'
alias hg='history 1 -1 | grep '

# process list helpers
alias pg='ps -A | grep '
alias psa='ps -A'

# open current window in path finder
alias o='open -a "Path\ Finder.app" .'

#Edit
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias edit='sublime'

# task list saved in git
alias t='edit ~/.dotfiles/docs/tasks.md'
alias tu='git --git-dir=/Users/cdoolittle/.dotfiles/.git/ --work-tree=/Users/cdoolittle/.dotfiles commit -a -m "ToDo update"'

# copies public ssh key to clipboard
alias pubkey="more ~/.ssh/id_dsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

#Shorter Git commands
alias gist='git status'
alias st='open -a SourceTree `pwd`'

#replace Git with Hub
alias git='hub'

alias mci='mvn clean install -DskipTests -Pblc-development'
alias mcit='mvn clean install -Pblc-development'
alias mi='mvn install -DskipTests -Pblc-development'

#blc docs
alias localdocs='gollum-site serve --watch --working --port 8050'

#ease tomcat starting, stopping, logging
alias start='sh bin/startup.sh'
alias stop='sh bin/shutdown.sh'
alias log='tail -f logs/catalina.out'

# Ansible, will use a hosts file
#alias ansible='ansible -i hosts'
#alias playbook='ansible-playbook -i hosts'

alias usejava6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias usejava7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias usejava8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

#dev aliases
alias refresh='source ~/.zshrc'
alias redis='redis-server /usr/local/etc/redis.conf'
alias mysql='mysql.server start'
alias solr='solr.sh'
alias site-start='site-start.sh'
alias admin-start='admin-start.sh'
alias build-all='build-all.sh'
alias reset-dock='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias assume='git update-index --assume-unchanged'
alias unassume='git update-index --no-assume-unchanged'

#update for your .dotfiles
alias upt='git --git-dir=/Users/cdoolittle/.dotfiles/.git --work-tree=/Users/cdoolittle/.dotfiles commit -a -m "Update task list"'

# copy file content
alias copy='pbcopy'
alias paste='pbpaste'

#SSH
alias bamboo='ssh root@bamboo.iconfitness.com'
alias prdblc21='ssh root@prdblc21'
alias prdblc22='ssh root@prdblc22'
alias prdmysql1='ssh root@prdmysql1'
alias blcadmin='ssh root@blcadmin'
alias devblc01='ssh root@devblc01'
alias qablc21='ssh root@qablc21'
alias jarvis='ssh misweb@jarvis.iconfitness.com'
alias prddb2='ssh root@prddb2'

#host update-hu
alias hu='edit /private/etc/hosts'

#s3 Management
alias s3qaprod='aws s3 sync s3://iconblcstage s3://iconblcproduction'
alias s3prodqa='aws s3 sync s3://iconblcproduction s3://iconblcstage'
alias s3qadev='aws s3 sync s3://iconblcstage s3://iconblcdev'

alias process='ps -ef | grep'

alias clearcache='sudo discoveryutil mdnsflushcache'
