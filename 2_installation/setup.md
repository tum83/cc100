
# Table of Contents

1.  [Install R](#org6f2c11b)
    1.  [Windows](#org7589708)
    2.  [MacOS](#orgcf75d3e)
2.  [Install a C compiler](#org0401122)
    1.  [Windows](#org66850e7)
    2.  [MacOS](#orgf8842b9)
3.  [Install SQLite](#orgab11d6e)
    1.  [Windows](#org011095b)
    2.  [MacOS](#org4a71009)
4.  [Install Emacs](#org193b4f7)
    1.  [Download and Installation for Windows](#orgaa0da31)
    2.  [Download and Installation for MacOS](#org3444340)
5.  [Customize Emacs](#orgbc10171)
    1.  [Create configuration file](#org0bf2071)
    2.  [Create sample notebook](#org73ab313)

\#+options toc:nil

<a id="orgd40b46e"></a>


<a id="org6f2c11b"></a>

# Install R


<a id="org7589708"></a>

## Windows

-   Download the latest package from [CRAN](https://cran.r-project.org/).
-   Run the installer - accept all presets.
-   Add the location of the executable file `R` to the Windows `PATH`
    (`C:\Program Files\R\R-4.1.2\bin\x64`<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>).    
    -   Search for `PATH` and open the menu `System Properties`
        
        ![img](./img/systemproperties.png)
    
    -   Open the menu `Environment Variables`, click on the `PATH`
        variable and choose `Edit`
        
        ![img](./img/path.png)
    
    -   Click on `New` and paste the path `C:\Program
              Files\R\R-4.1.2\bin\x64` into the empty line<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>. Confirm three
        times with `OK` to close all menus.
        
        ![img](./img/environmentvariable.png)
    
    -   To test, search for `CMD`, open a terminal and enter `R`. The R
        program opens. At the `>` prompt, enter `hist(Nile)`. The
        histogram below should open in a new screen. Close the window.
        
        ![img](./img/histogram.png)


<a id="orgcf75d3e"></a>

## MacOS

-   Download the latest package from [CRAN](https://cran.r-project.org/).
-   Open the `.pkg` binary - accept all presets.
-   To test, search for `terminal`, open the app and enter `R`. The R
    program opens. At the `>` prompt, enter `hist(Nile)`. The
    histogram below should open in a new screen. Close the window.
    
    ![img](./img/histogram.png)
    
    -   You can now use the R console. I explain below how to run R
        inside the Emacs editor so that you can create notebooks.


<a id="org0401122"></a>

# Install a C compiler


<a id="org66850e7"></a>

## Windows

-   Download the installer [from sourceforge](https://sourceforge.net/projects/mingw-w64/).
-   Run the installer - accept all presets.
-   Add the location of the executable file `gcc` to the Windows
    `PATH` (`C:\Program Files
        (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\bin`<sup><a id="fnr.1.100" class="footref" href="#fn.1">1</a></sup>):
    
    -   Search for `PATH` and open the menu `System Properties`
        
        ![img](./img/systemproperties.png)
    
    -   Open the menu `Environment Variables`, click on the `PATH`
        variable and choose `Edit`
        
        ![img](./img/path.png)
    
    -   Click on `New` and paste the path ~C:\Program Files
    
    (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt<sub>v6</sub>-rev0\mingw32\bin~
    into the empty line. Confirm three times with `OK` to close all
    menus.
    
    ![img](./img/environmentvariable.png)
    
    -   To test, search for `CMD`, open a terminal and enter `gcc
              --version` - you should get the output shown below. Close the
        window.
        
        ![img](./img/gcc.png)


<a id="orgf8842b9"></a>

## MacOS

Apple no longer allows GNU tools - instead, you can install the
Clang compiler.

-   Check if you already have a C compiler: open a terminal (search
    for `terminal` app) and enter `cc -v`.
-   If no compiler is found, download it by entering `xcode-select
         --install`
-   Test it by typing `cc -v`.
    
    ![img](./img/cc.png)


<a id="orgab11d6e"></a>

# Install SQLite


<a id="org011095b"></a>

## Windows


<a id="org4a71009"></a>

## MacOS

-   Go to the [download page](https://sqlite.org/download.html) and download the `.zip` bundle for MacOS
    (x86).
    
    ![img](./img/sqlite.png)

-   Double-click the `.zip` file to open it.
-   Right-click on the executable file `sqlite3` and confirm that you
    want to open it. Now SQLite will open in a new terminal window.
    
    ![img](./img/sqlite.png)

-   You can also type `sqlite3` in a terminal to open the console.


<a id="org193b4f7"></a>

# Install Emacs


<a id="orgaa0da31"></a>

## Download and Installation for Windows

-   Download GNU Emacs + ESS as a modified version for [Windows](https://vigou3.gitlab.io/emacs-modified-windows/).
-   Run the installer - accept all presets.
-   Check out the [guided tour](https://www.gnu.org/software/emacs/tour/).
-   Open Emacs, type `CTRL-h t` (`C-h t`) and complete the tutorial.


<a id="org3444340"></a>

## Download and Installation for MacOS

-   Download GNU Emacs + ESS as a modified version for [MacOS](https://vigou3.gitlab.io/emacs-modified-macos/).
-   Run the installer - accept all presets.
-   Check out the [guided tour](https://www.gnu.org/software/emacs/tour/).
-   Open Emacs, type `CTRL-h t` (`C-h t`) and complete the tutorial.


<a id="orgbc10171"></a>

# Customize Emacs

GNU Emacs is much more than a text editor and an IDE. It's more like
an operating system inside your operating system. Among the many
things that Emacs is capable of, we only need one for this class:
the ability to create and run interactive notebooks.

This will give you the power of Jupyter notebooks or Colaboratory on
your computer, and you can share notebooks with anyone, who has
Emacs.


<a id="org0bf2071"></a>

## Create configuration file

To create interactive computing notebooks in Emacs, we use the
[Org-mode](https://orgmode.org/) and [Babel](https://orgmode.org/worg/org-contrib/babel/intro.html) packages. Both are already installed in your
version of Emacs, but you have to tell Babel, which languages you
want to work with. 

Customization like this is done with a configuration file `.emacs`,
which is placed in your home directory (`~/~`). Where this folder
is actually located on your computer depends on your operating
system.

Download the configuration file [from GitHub](https://github.com/birkenkrahe/cc100/blob/main/2_installation/.emacs).


<a id="org73ab313"></a>

## Create sample notebook

To create a notebook, create an `.org` file. Then type `C-c C-,`
and select your chunk from the list. You can also abbreviate this
by entering `<s` on any line.

Check out <./babel.md> for examples with both R and C code in the
same file<sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup>. 


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> The version number of R will change for new or different
versions of the program.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> The best way is to find the folder in the file explorer and copy
the address as text:
![img](./img/address.png)

<sup><a id="fn.3" href="#fnr.3">3</a></sup> This link also shows you how to link notebooks. You can set a
link anywhere (inside Emacs or Internet) with `C-c C-l`. If the target
is another file, that file needs to be found (the path must be
correct), and an anchor with the link name must be put into the file,
in this case, the link is `~/.babel.org`, and the anchor is
`<<babel.org>>`
