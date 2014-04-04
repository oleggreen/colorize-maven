Colorize maven linux
==============

Script to colorize maven output in linux.

To colorize maven in linux
----------------------------------------------------
 you should do next steps:
* copy colorize-maven.sh to home folder( ```~/``` )
* insert into ```~/.bashrc``` next code:
```bash
if [ -f ~/.colorize-maven.sh ]; then
  . ~/.colorize-maven.sh
fi
```
* execute next command to reload ```.bashrc``` script:
```console
>source ~/.bashrc
```
* **Done**.
Now you can use:<br>
```mvn``` command for colorized maven<br>
```maven``` for simple (non-colorized) maven
