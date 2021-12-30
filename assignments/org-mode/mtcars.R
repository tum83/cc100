## My first Org-mode file

##     * The function ~str()~ prints all variables (column vectors) of a
##       data structure.
##     * In the code block, ~str()~ is applied to the built-in data frame
##       ~mtcars~.
##     * The result shows that ~mtcars~ contains 32 rows (observations)
##       of 11 variables.
##     * The syntax is not highlighted (language keywords like ~str~ and
##       data like ~mtcars~ are not visually distinguished).
##     * The code block header has the following arguments:

##       | HEADER ARGUMENT      | MEANING                                                |
##       |----------------------+--------------------------------------------------------|
##       | ~:session *R*~       | Run R in a session in the Emacs buffer ~*R*~           |
##       | ~:var DATA="mtcars"~ | Assign ~mtcars~ to the variable ~DATA~                 |
##       | ~:results output~    | insert output directly in the org file                 |
##       | ~:tangle first.R~    | export source code as R file ~first.R~  ("tangle")     |
##       | ~:exports both~      | both result and source code will be exported           |
##       | ~:comments both~     | link source code and org files, add comments to source |

##     #+name: mtcars

## [[file:README.org::mtcars][mtcars]]
DATA <- "mtcars"
## print structure of mtcars data frame
str(mtcars)
## mtcars ends here
