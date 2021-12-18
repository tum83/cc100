
# Table of Contents

1.  [Org babel languages](#org6aab114)
2.  [C: pun](#org9475055)
3.  [C++: Hello world](#orgd5c66cb)
4.  [Sources](#orgcc47043)



<a id="org6aab114"></a>

# [Org babel languages](https://orgmode.org/worg/org-contrib/babel/languages/index.html)

-   C chunks require "C"
-   C++ chunks require "cpp"


<a id="org9475055"></a>

# C: pun

Source: [King, ch. 2](#org2000706)

    #include <stdio.h>
    
    int main(void)
    {
      printf("To C, or not to C, that is the question.\n");
      return 0;
    }


<a id="orgd5c66cb"></a>

# C++: Hello world

    
    // This program outputs the message "Hello, World!" to the monitor
    
    #include "stdio.h"
    
    int main()  // C++ programs start by executing the function main
    {
      cout << "Hello, World!\n";  // output "Hello, World!"
      return 0;
    }


<a id="orgcc47043"></a>

# Sources

<a id="orge29f2fb"></a> GNU gcc

<a id="org2000706"></a> King, C Programming 2nd ed.

