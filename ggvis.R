Section 1 - Introduction to ggvis

# ggvis is an R package, a collection of functions and data sets that enhance the R language.
# ggvis helps you visualize data sets.


library(ggvis)

# Change the code below to plot the disp variable of mtcars on the x axis
# mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()
mtcars %>% ggvis(~disp, ~mpg) %>% layer_points()

#----------

# The ggvis syntax is pretty intuitive.
# You can change the fill color of the points in your graph by adding fill := "blue".
# Or you can change the layer_points() function ... to plot your data differently.
# You can even plot the same data twice to make your graph more informative


# Change the code below to make a graph with red points
# mtcars %>% ggvis(~wt, ~mpg, fill := "blue") %>% layer_points()
mtcars %>% ggvis(~wt, ~mpg, fill := "red") %>% layer_points()

# Change the code below draw smooths instead of points
# mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths()

# Change the code below to make a graph containing both points and a smoothed summary line
# mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points() %>% layer_smooths()


==========

Section 2 - The grammar of ggvis





