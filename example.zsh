# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
# CUSTOM ALIAS
#
#
#
# Copy and Paste
alias cc='xclip -selection clipboard'
alias cv='xclip -o -selection clipboard'
#
# Start apps
alias glassfish-start='cd ~/glassfish4/glassfish/bin; ./asadmin start-domain domain1 && cd -'
alias glassfish-stop='cd ~/glassfish4/glassfish/bin; ./asadmin stop-domain domain1 && cd -'
alias glassfish-log='cd ~/glassfish4/glassfish/domains/domain1/logs; cat server.log && cd -'
alias glassfish-cleanLog='cd ~/glassfish4/glassfish/domains/domain1/logs; truncate -s0 server.log && cd -'
#
# Locations
alias apache-sites='cd /var/www/html'
alias list-svn='svn='http://ec2-54-164-48-81.compute-1.amazonaws.com/svn/projetos' && svn list --verbose http://ec2-54-164-48-81.compute-1.amazonaws.com/svn/projetos'
#
#
# Connect
alias aws-prod-gustavo='ssh -i ~/Dropbox/professional/gustavoborges.net/amazon-aws/aws-sao-paulo.pem ubuntu@54.207.34.41'
alias hostgator-heljur='ssh -p 2222 helpj728@216.172.172.49'
alias aws-asert-devops='ssh -i ~/Dropbox/professional/asert/aws/application-server.pem ubuntu@ec2-54-164-48-81.compute-1.amazonaws.com'
alias aws-asert-test='ssh -i ~/Dropbox/professional/asert/aws/asert-test-key.pem ubuntu@ec2-52-67-3-46.sa-east-1.compute.amazonaws.com'
alias aws-nogueira='ssh -i ~/Dropbox/professional/nogueiranobre/aws/nogueiranobre-key.pem ubuntu@54.165.183.174'
#
# Utils
alias keyboard-restart='ibus-daemon -rd'
#
#
# CUSTOM EXPORT

export ANDROID_HOME=$HOME/android/sdk
export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export NVM_DIR="/home/gustavo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

