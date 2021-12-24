
# Table of Contents

1.  [Install R](#org6d6ba60)
    1.  [Windows](#org0a44643)
    2.  [MacOS](#org4d6a7d9)
2.  [Install a C compiler](#org0767315)
    1.  [Windows](#org534a333)
    2.  [MacOS](#org26342c5)
3.  [Install SQLite](#org2dce468)
    1.  [Windows](#orgee9e4a5)
    2.  [MacOS](#org6e32669)
4.  [Install Emacs](#org9922113)
    1.  [Download and Installation for Windows](#org8c66cf9)
    2.  [Download and Installation for MacOS](#org7154a4c)
5.  [Customize Emacs](#org68e36d2)
    1.  [Create configuration file](#orgcdae6c6)
    2.  [Create sample notebook](#org4dd460c)
    3.  [Layout changes](#org5da8dc5)
        1.  [Customize theme and font](#org70a72be)
        2.  [Installing additional packages](#org5f17477)
        3.  [Presenting in Emacs](#orgef49ca8)
        4.  [Definitions and functions](#org706fe8d)

\#+options toc:nil

<a id="org4486919"></a>


<a id="org6d6ba60"></a>

# Install R


<a id="org0a44643"></a>

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


<a id="org4d6a7d9"></a>

## MacOS

-   Download the latest package from [CRAN](https://cran.r-project.org/).
-   Open the `.pkg` binary - accept all presets.
-   To test, search for `terminal`, open the app and enter `R`. The R
    program opens. At the `>` prompt, enter `hist(Nile)`. The
    histogram below should open in a new screen. Close the window.
    
    ![img](./img/histogram.png)
    
    -   You can now use the R console. I explain below how to run R
        inside the Emacs editor so that you can create notebooks.


<a id="org0767315"></a>

# Install a C compiler


<a id="org534a333"></a>

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


<a id="org26342c5"></a>

## MacOS

Apple no longer allows GNU tools - instead, you can install the
Clang compiler.

-   Check if you already have a C compiler: open a terminal (search
    for `terminal` app) and enter `cc -v`.
-   If no compiler is found, download it by entering `xcode-select
         --install`
-   Test it by typing `cc -v`.
    
    ![img](./img/cc.png)


<a id="org2dce468"></a>

# Install SQLite


<a id="orgee9e4a5"></a>

## Windows


<a id="org6e32669"></a>

## MacOS

-   Go to the [download page](https://sqlite.org/download.html) and download the `.zip` bundle for MacOS
    (x86).
    
    ![img](./img/sqlite.png)

-   Double-click the `.zip` file to open it.
-   Right-click on the executable file `sqlite3` and confirm that you
    want to open it. Now SQLite will open in a new terminal window.
    
    ![img](./img/sqlite.png)

-   You can also type `sqlite3` in a terminal to open the console.


<a id="org9922113"></a>

# Install Emacs


<a id="org8c66cf9"></a>

## Download and Installation for Windows

-   Download GNU Emacs + ESS as a modified version for [Windows](https://vigou3.gitlab.io/emacs-modified-windows/).
-   Run the installer - accept all presets.
-   Check out the [guided tour](https://www.gnu.org/software/emacs/tour/).
-   Open Emacs, type `CTRL-h t` (`C-h t`) and complete the tutorial.


<a id="org7154a4c"></a>

## Download and Installation for MacOS

-   Download GNU Emacs + ESS as a modified version for [MacOS](https://vigou3.gitlab.io/emacs-modified-macos/).
-   Run the installer - accept all presets.
-   Check out the [guided tour](https://www.gnu.org/software/emacs/tour/).
-   Open Emacs, type `CTRL-h t` (`C-h t`) and complete the tutorial.


<a id="org68e36d2"></a>

# Customize Emacs

GNU Emacs is much more than a text editor and an IDE. It's more like
an operating system inside your operating system. Among the many
things that Emacs is capable of, we only need one for this class:
the ability to create and run interactive notebooks.

This will give you the power of Jupyter notebooks or Colaboratory on
your computer, and you can share notebooks with anyone, who has
Emacs.


<a id="orgcdae6c6"></a>

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


<a id="org4dd460c"></a>

## Create sample notebook

To create a notebook, create an `.org` file. Then type `C-c C-,`
and select your chunk from the list. You can also abbreviate this
by entering `<s` on any line.

Check out <./babel.md> for examples with both R and C code in the
same file<sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup>.


<a id="org5da8dc5"></a>

## Layout changes

You can completely change anything about the way Emacs looks, feels
and behaves. Here are a few suggestions with code snippets based on
my own customizations.

If you change your `~/.emacs` file, you need to evaluate the file
(`M-x h evaluate-region`) or restart Emacs to see the changes.

Emacs Lisp is a fun language to learn, because through Emacs you
can play around with it and see what it does much more easily than
with other languages. Here is a [complete tutorial for
non-programmers](https://www.gnu.org/software/emacs/manual/html_node/eintr/).


<a id="org70a72be"></a>

### Customize theme and font

To change the theme, enter `M-x custom-themes`. Activate `Save
    theme settings` if you want the settings to become permanent. This
will modify your `.emacs` configuration file.

You can also upload fonts and change fonts. You can do this
easiest by opening the `Options` menu at the top of the Emacs
screen and selecting `Set default font` from the list.

If you don't have the menu bar, enter `M-x menu-bar-mode` - this
will toggle the menu bar, i.e. you can make it appear or disappear
with this command. If you don't have a mouse, you can open the
menus with `<F10>`. I don't tend to use it at all, since one of
the advantages of Emacs is that everything can be done with the
keyboard (which is way faster than the mouse).


<a id="org5f17477"></a>

### Installing additional packages

There are hundreds of useful packages available for instant
installation. To see them, enter `M-x package-list-packages`.

The screenshot shows part of the listing, with `available`,
`installed` (by me), and `built-in` (by GNU Emacs) files.

![img](./img/packages.png)

To install a package

-   search and find it (forward search with `C-s` or backward search
    with `C-r`)
-   enter `i` to mark the package for installation
-   enter `x` to install it.


<a id="orgef49ca8"></a>

### Presenting in Emacs

I often present in Emacs, especially when I use interactive
notebooks. I use `org-slide-tree-mode` for that ([see
documentation](https://github.com/takaxp/org-tree-slide)). You need to install the package `org-tree-slide`
and put the code below into your `/.emacs` file.

![img](./img/orgtreeslide.png)

    
    ;; org-tree-slide: https://github.com/takaxp/org-tree-slide
    ;; to activate: M-x org-tree-slide-mode or <f9> - stop S-<f9>
    (require 'org-tree-slide)
    (with-eval-after-load "org-tree-slide"
      (global-set-key (kbd "<f9>") 'org-tree-slide-mode)
      (global-set-key (kbd "S-<f9>") 'org-tree-slide-skip-done-toggle)
      (define-key org-tree-slide-mode-map (kbd "<f8>") 'org-tree-slide-move-previous-tree) ;; move forwards
      (define-key org-tree-slide-mode-map (kbd "S-<f8>") 'org-tree-slide-move-next-tree)  ;; move backwards
      )
    (setq org-image-actual-width nil)
    (setq org-tree-slide-skip-outline-level 0)
    (setq org-tree-slide-slide-effect t)
    (org-tree-slide-simple-profile) ;; no headers

In the code, `<f9>` is used to switch the mode on or off (`SHIFT +
    <f9>`), and `<f8>` to move one slide forward or backward (`SHIFT +
    <f8>`). Slide headers have been removed. If you want slide
headers, comment the last line by putting `;;` in front of it like
this:

    
    ;; (org-tree-slide-simple-profile) ;; no headers


<a id="org706fe8d"></a>

### Definitions and functions

You can use `M-Q` to fill a region (wrap the text and cut it off
after 70 characters, a value set in `fill-column`). Sometimes it
is useful to unfill a region (put it on one line, for example to
copy it into an email). If you put the following definition into
your `~/.emacs` file, you can use `M-x unfill-region` to achieve
that.

    
    ;; unfill region
    (defun unfill-region (beg end)
      "Unfill the region, joining text paragraphs into a single
        logical line.  This is useful, e.g., for use with
        `visual-line-mode'."
      (interactive "*r")
      (let ((fill-column (point-max)))
        (fill-region beg end)))

If you like to bind the function to a key sequence, you can use
this code - now `C-M-Q` will invoke the function:

    ;; bind unfill-region to C-M-Q
    (define-key global-map "\C-\M-Q" 'unfill-region)


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
