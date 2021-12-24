<a id="orgd3cc70a"></a>


# Babel test

This file demonstrates [working with source code](https://orgmode.org/manual/Working-with-Source-Code.html) in Emacs. 

1.  To run a code chunk as a whole, type `C-c C-c`. The result will
    appear immediately below the chunk.<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>
2.  look at the code in a separate buffer and run them in parts. To
    open a buffer with the code, type `C-c '`.
3.  To print an org-mode file, type `C-c C-e` and choose a print
    format from the list.

Running chunks will only work if Emacs can find the respective
programs<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>, and if a compiler (for C), or an interpreter (for R
and SQLite) were installed.


## C

The code block needs to be named as shown. If you want the result
and the code shown in the printout, you need to specify `:exports
   both`. 

    #include <stdio.h>
    
    int main(void) {
      puts("hello world");
      return 0;
    }

    hello world

In the second version, both the header and the function definition
are preset so that you can see the inside of the function only.

    puts("hello world");

    hello world


## R

Unlike C, R is an interpreted language. To see results in the
notebook, we need to specify `:session :results output`

The code block needs to be named as shown. If you want the result
and the code shown in the printout, you need to specify `:exports
   both`. 

    
    str(mtcars)

    
    'data.frame':	32 obs. of  11 variables:
     $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
     $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
     $ disp: num  160 160 108 258 360 ...
     $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
     $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
     $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
     $ qsec: num  16.5 17 18.6 19.4 17 ...
     $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
     $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
     $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
     $ carb: num  4 4 1 1 2 1 4 2 2 4 ...

Note: when the `#+Results` output exceeds a few lines, it is
automatically formatted as an example.

In the second example, the output is graphical. We must specify
that in the header by adding `:results graphics file` and give a
file name (and type) like `:file histogram.png`. 

    
    hist(Nile)

![img](histogram.png)

You can open the link in another buffer with `C-c C-o`. If you
don't give a file type, Emacs will still show the result, but you
won't be able to easily open the file from `dired` (`C-x d`).

If you type your own code blocks, remember that you can apply
proper identation to any marked region with `C-M-\`. 


## SQLite

SQLite is a relational database management system. For this code
block to work you need a database `babel.db`. You can create an
empty file (with the command `touch babel.db`) in the current
working directory. 

    .database
    DROP TABLE IF EXISTS tabelle;
    CREATE TABLE tabelle (id INT, name TEXT);
    .tables
    INSERT INTO tabelle VALUES (1,"Marcus");
    .mode column
    .width 3 10
    .header ON
    SELECT * FROM tabelle;


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Provided the block has been formatted correctly.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> This is why we changed the Windows `PATH` variable during the
installation of the programs `R` and `GNU gcc` ([here](./setup.md)).
