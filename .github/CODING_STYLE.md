# Coding Style Guide

## General Rules

* Use `<-` for assignment, NOT `=`.
```{r}
# GOOD
x <- 1

# BAD
x = 1
1 -> 1
```
* In a function call, specify arguments by name. Never specify by partial name and never mix by position and complete name.
```{r}
# GOOD
mean(x, na.rm = TRUE)

# BAD
mean(x, na = TRUE)
```
* The required arguments should be first, followed by optional arguments.
```{r}
# GOOD
raise_to_power(x, power = 2.7)

# BAD
raise_to_power(power = 2.7, x)
```
* The `...` argument should either be in the beginning or in the end.
```{r}
# GOOD
standardize(..., scale = TRUE, center = TRUE)

# BAD
standardize(scale = TRUE, ..., center = TRUE)
```
* Set default arguments inside the function using `NULL` idiom, and avoid dependence between arguments.
* Always validate arguments in a function.
* Specify the namespace of each used function, except if it is from `base` package.
```{r}
# GOOD
ggplot2::ggplot()
dplyr::select()

# BAD 
ggplot()
select()
```
* Do NOT put more than one statement per line. Do NOT use semicolon as termination of the command.
```{r}
# GOOD
x <- 1
x <- x + 1

# BAD 
x <- 1; x <- x + 1
```

## Naming
As a general rule, abbreviations must be avoided when naming.

### Naming Files

* File names must use `.R` extension.
```{r}
# GOOD
plot.R

# BAD
plot
```
* File names must be meaningful.
```{r}
# GOOD
plot.R

# BAD
Untitled1.R
```
* File names must not contain `/` and spaces. Instead, a dash (`-`) or underscore (`_`) must be used.
```{r}
# GOOD
read_csv.R
plot-methods.R

# BAD
read csv.R
```
* File names must use letters from Basic Latin, NOT from Latin-1 Supplement, and must be lowercase.
```{r}
# GOOD
plot.R

# BAD
Plot.R
données.R
```
* Use meaningful verbs for file names.
```{r}
# GOOD
fit_model.R

# BAD
addition.R
```
* Mind special names:
    * `AllClasses.R` stores all S4 classes definitions.
    * `AllGenerics.R` stores all S4 generic functions.
    * `zzz.R` contains `.onLoad()` and friends.
* Use the `-methods` suffix for S4 class methods.
* If the file contains only one function, name it by the function name.

### Naming Variables

* Variables names must be as short as possible.
* Variables names must be meaningful nouns.
* Variable names must be lowercase.
* Never separate words within the name by `.` (reserved for an S3 dispatch) or use PascalCase (reserved for S4 classes definitions). Instead, use an underscore (`_`).
```{r}
# GOOD
std_dev <- 3

# BAD
std.dev <- 3
StdDev <- 3
```
* Do not use names of existing function and variables (especially, built-in ones).
```{r}
# GOOD
std_dev <- 3

# BAD
T <- 1
c <- 2 * 2
mean <- 10
```

### Naming Functions

* Function names must contain a verb that refers to the primary action of the function.
* Function names must be in snake_case. Use `.` only for dispatching S3 generic.
* An `object_verb()` naming scheme should be prefered as often as possible. This scheme is easy to read and auto-complete.
```{r}
# GOOD
peak_detect()

# BAD
addition()
readFile()
```
* Avoid function name conflicts with base packages or other popular ones.

### Naming S4 Classes

* Class names must be nouns in PascalCase with initial capital case letter and the first letter of each subsequent concatenated word capitalized.

## Syntax
### Line Length

* The maximum length of lines is limited to 80 characters.

### Spacing

* Put spaces around all infix binary operators (`=`, `+`, `*`, `==`, `&&`, `<-`, `%*%`, etc.).
```{r}
# GOOD 
x == y
z <- 2 + 1

# BAD
x==y
z<-2+1
```
* Put spaces around `=` in function calls.
```{r}
# GOOD 
mean(x = c(1, 2, 3), na.rm = TRUE)

# BAD
mean(x=c(1, 2, NA), na.rm=TRUE)
```
* Do not place space for subsetting (`$` and `@`), namespace manipulation (`::` and `:::`), and for sequence generation (`:`).
```{r}
# GOOD
car$cyl
dplyr::select()
1:10

# BAD
car $cyl
dplyr:: select()
1: 10
```
* Put a space after a comma.
```{r}
# GOOD 
mtcars[1, ]
mean(x = c(1, NA, 2), na.rm = TRUE)

# BAD
mtcars[1 ,]
mean(x = c(1,NA,2),na.rm = TRUE)
```
* Use a space before left parentheses, except in a function call.
```{r}
# GOOD 
for (element in element_list)
if (total == 5)
sum(1:10)

# BAD
for(element in element_list)
if(total == 5)
sum (1:10)
```
* No spacing around code in parenthesis or square brackets.
```{r}
# GOOD 
if (is_true) message("Hello!")
species["tiger", ]

# BAD
if ( is_true ) message("Hello!")
species[ "tiger" ,]
```

### Curly Braces

* An opening curly brace should never go on its own line and should always be followed by a new line.
```{r}
# GOOD 
if (is_true) {
  # do something
}

if (is_true) {
  # do something
} else {
  # do something else
}
    
# BAD
if (is_true)
{
  # do something
}
    
if (is_true) { # do something }
else { # do something else }
```
* A closing curly brace should always go on its own line, unless it's followed by `else`.
```{r}
# GOOD 
if (is_true) {
  # do something
} else {
  # do something else
}

# BAD
if (is_true) {
  # do something
}
else {
  # do something else 
}
```
* Always indent the code inside curly braces.
```{r}
# GOOD 
if (is_true) {
  # do something
  # and then something else
}
    
# BAD
if (is_true) {
# do something
# and then something else
}
```
* Curly braces and new lines can be avoided, if a statement after `if` is very short.
```{r}
# Good 
if (is_true) return(value)
```

### Indentation

* Do not use tabs or mixes of tabs and spaces for indentation.
* Use two spaces for indentation.

### New Line

* In a function definition or call excessive arguments must be indented where the closing parenthesis is located, if only two lines are sufficient.
```{r}
# GOOD
long_function_name <- function(arg1, arg2, arg3, arg4, 
                               long_argument_name1 = TRUE)
                               
plot(table(rpois(100, 5)), type = "h", col = "red", lwd = 10, 
     main = "rpois(100, lambda = 5)")
```
* Otherwise, each argument can go into a separate line, starting with a new line after the opening parenthesis.
```{r}
# GOOD
long_function_name <- function(long_argument_name1 = c("value1", "value2"),
                               long_argument_name2 = TRUE,
                               long_argument_name3 = NULL,
                               long_argument_name4 = FALSE)

list(
  mean = mean(x),
  sd = sd(x),
  var = var(x),
  min = min(x),
  max = max(x),
  median = median(x)
)
```
* If the condition in `if` statement expands into several lines, than each condition must end with a logical operator, NOT start with it.
```{r}
# GOOD
if (some_very_long_name_1 == 1 &&
    some_very_long_name_2 == 1 ||
    some_very_long_name_3 %in% some_very_long_name_4)

# BAD
if (some_very_long_name_1 == 1
    && some_very_long_name_2 == 1
    || some_very_long_name_3 %in% some_very_long_name_4)
```
* If the statement, which contains operators, expands into several lines, then each line should end with an operator and not begin with it.
```{r}
# GOOD 
normal_pdf <- 1 / sqrt(2 * pi * d_sigma ^ 2) *
  exp(-(x - d_mean) ^ 2 / 2 / s ^ 2)

# BAD
normal_pdf <- 1 / sqrt(2 * pi * d_sigma ^ 2)
  * exp(-(x - d_mean) ^ 2 / 2 / d_sigma ^ 2)
```
* Each grammar statement of `dplyr` (after `%>%`) and `ggplot2` (after `+`) should start with a new line.

### Comments

* Comments start with `#` followed by space and text of the comment.
```{r}
# This is a comment.
```
* Comments should explain the why, not the what. Comments should explain the overall intention of the command.
```{r}
# GOOD
# define iterator
i <- 1
    
# BAD
# set i to 1
i <- 1
```
* Short comments can be placed on the same line of the code.
```{r}
plot(price, weight) # Plot a scatter chart of price and weight
```
* It makes sense to split the source into logical chunks by `#` followed by `-` or `=`.
```{r}
# Read data --------------------------------------------------------------------
    
# Clean data -------------------------------------------------------------------
```

This coding style guide is adapted from the the [tidyverse style guide](http://style.tidyverse.org), the [rOpenSci Packages book](https://devguide.ropensci.org) and Iegor Rudnytskyi's [R Coding Style Guide](https://irudnyts.github.io/r-coding-style-guide/).
