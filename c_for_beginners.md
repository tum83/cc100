

# A first program - `helloworld.c`


## Printing functions

The code chunk below is reduced to the instructions.

    
    printf("hello world\n"); // formatted output
    puts("hello world");   // unformatted output

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">hello</td>
<td class="org-left">world</td>
</tr>


<tr>
<td class="org-left">hello</td>
<td class="org-left">world</td>
</tr>
</tbody>
</table>

-   There's only one command: print a *string literal* to the screen
-   Both `printf()` and `puts()` are *output* functions<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>
-   *String literals* are enclosed in `" "`
-   All commands are closed with a `;`


## Complete code

    
    #include <stdio.h>
    
    int main(void) {
      printf("hello world\n");
      return 0;
    }

-   The computer knows the screen as `stdout`
-   All commands must be wrapped in a `main()` function
-   The *header* file `stdio.h` is a *library* of functions


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> [See here](https://www.geeksforgeeks.org/puts-vs-printf-for-printing-a-string/) for a comparison of `printf()` vs. `puts()`.
