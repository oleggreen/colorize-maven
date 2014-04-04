Colorize maven linux
==============

Script to colorize maven output in linux.
Next sources was used: 
* <a href="http://gist.github.com/mike-ensor/1881211">mike-ensor/colorize-maven.sh</a>
* <a href="http://github.com/builddoctor/maven-antsy-color">builddoctor/maven-antsy-color</a>
* <a href="http://blog.blindgaenger.net/colorize_maven_output.html">blindgaenger blog</a>

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
