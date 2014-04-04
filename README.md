#Colorize maven linux

Script to colorize maven output in linux
==============

To colorize maven in linux you should do next steps:

1) copy colorize-maven.sh to home folder( ~/ )

2) insert into ~/.bashrc next code:
if [ -f ~/.colorize-maven.sh ]; then
  . ~/.colorize-maven.sh
fi

3) execute next command to reload .bashrc script:
source ~/.bashrc

4) done. now you can use:
"mvn" command for colorized maven
"maven" for simple(non-colorized) maven
