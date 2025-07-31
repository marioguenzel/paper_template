# Paper Template

A paper template which allows easy switch between different document classes.
This avoids overhead when switching the submission to another conference.


## How to use?

When starting a new paper, just make a new folder for your paper and use the command inside the folder:
```
bash <(curl -s https://raw.githubusercontent.com/marioguenzel/paper_template/main/makepaper.sh)
```
This runs the ```makepaper.sh``` bash script, which downloads the template and corresponding class files (Except the ACM template which is more dedicated and is assumed to be fully installed.)
At the top, the class can be chosen and relevant information for the submission is set. 
There is no further configuration needed. 
Just use ```latexmk``` to build the paper. 
When switching the venue and a different class is required, just switch the class as the top and build again. 

**Tip:**<br>
Add an alias for the bash command to rc file (like bashrc or zshrc). I use the following:
```
alias makepaper="bash <(curl -s https://raw.githubusercontent.com/marioguenzel/paper_template/main/makepaper.sh)"
```

## After acceptance

When the paper is accepted (congrats!) set the submission flag at the top of the latex file to false (uncomment the ```\submissionfalse```). 
Furthermore, some conferences have an ```anonymous``` flag which should be removed. 
To enter author information please check the two corresponding preamble/input files in the ```resources/``` folder. 


## TODO

- Add llncs template (e.g., RTNS)