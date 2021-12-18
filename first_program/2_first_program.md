
# Table of Contents

1.  [Org babel languages](#orgaddaa0c)
2.  [C: pun](#orgc73dd57)
3.  [C++: Hello world](#org230eba9)
4.  [SQL](#orge14b59b)
5.  [Sources](#orgce8065b)



<a id="orgaddaa0c"></a>

# [Org babel languages](https://orgmode.org/worg/org-contrib/babel/languages/index.html)

-   C chunks require "C"
-   C++ chunks require "cpp"


<a id="orgc73dd57"></a>

# C: pun

Source: [King, ch. 2](#org8d81cf3)

    #include <stdio.h>
    
    int main(void)
    {
      printf("To C, or not to C, that is the question.\n");
      return 0;
    }

In the following code chunk, I use the flags

-   `:main yes`, which builds a `int main(void)` function
-   `:includes <stdio.h>`, which includes the `stdio.h` library

    printf("hello world");

    hello world


<a id="org230eba9"></a>

# C++: Hello world

    
    // This program outputs the message "Hello, World!" to the monitor
    
    #include "stdio.h"
    
    int main()  // C++ programs start by executing the function main
    {
      cout << "Hello, World!\n";  // output "Hello, World!"
      return 0;
    }


<a id="orge14b59b"></a>

# SQL

    drop table if exists r;
    create table t(a int, b int);


<a id="orgce8065b"></a>

# Sources

<a id="orgce243d2"></a> GNU gcc

<a id="org8d81cf3"></a> King, C Programming 2nd ed.

