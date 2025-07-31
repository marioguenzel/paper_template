# paper_template
A paper template which allows easy switch between different document classes



## Sources

- Lipics https://github.com/dagstuhl-publishing/styles/raw/refs/heads/master/LIPIcs/authors/lipics-v2021.cls (incl cc-by.pdf, orcid.pdf and lipics-logo-bw.pdf)
- IEEE wget http://mirrors.ctan.org/macros/latex/contrib/IEEEtran/IEEEtran.cls
- ACM https://portalparts.acm.org/hippo/latex_templates/acmart-primary.zip (+extract cls file) Put the files acmart.cls, acm-jdslogo.png, and ACM-Reference-Format.bst in places where L A T EX can find them (see [1] or the documentation for your T EX system).  (Assuming that ACM is installed, I will not take care of this one now.)



## Make a paper

```
bash <(curl -s https://raw.githubusercontent.com/marioguenzel/paper_template/main/makepaper.sh)
```