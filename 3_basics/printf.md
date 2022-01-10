

# Correct `printf` command

This is one of C's weaknesses, and can be demonstrated using the
`printf` function. The first code block contains the correct
command.

    printf("%d bottles of beer on the %s", 20, "wall\n");


# Wrong format identifier

The machine's response to errors is highly compiler-dependent. On
Linux Raspbian with gcc 8.3.0, the following error leads to a
`Segmentation fault` at run time<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>. On Windows 10 with MinGW-W64
gcc 8.1.0, there is no output but also no complaint<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>.

    printf("%s bottles of beer on the %s", 20, "wall\n");


# Wrong number of data for input

In this example, two arguments are formatted, but three data are put
in, namely an extraneous string.

    printf("%d bottles of beer on the %s", 20, "wall", "wall" );

Only when using the `-Wall` (all warnings) flag, will the compiler
show these warnings (not in org-mode, only during a shell
compilation):

    #$ gcc -Wall -o perr printf_error.c
    printf_error.c: In function ‘main’:
    printf_error.c:9:8: warning: too many arguments for format [-Wformat-extra-args]
     printf("%d bottles of beer on the %s", 20, "wall", "wall" );
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> "Segmentation" relates to the computer's memory management. The
background is that the compiler needs to reserve memory for
operations, and it does this based on the data types. If, as in the
example, a reservation for a string type has been made (`%s` is the
format identifier for a strong), but then integer data (`20`) are put
in, the memory segmentation is faulty.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> Setting the compiler flag `-Wall` generates a suitable warning
but the compilation is not halted:

    $ gcc -Wall -o pi1 pi1.c 
    pi1.c: In function 'main':
    pi1.c:9:10: warning: format '%s' expects argument of type 'char *', but argument 2 has type 'int' [-Wformat=]
     printf("%s bottles of beer on the %s", 20, "wall\n");
             ~^                             ~~
             %d
