# Section 1 - Introduction to ggvis

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

# Section 2 - The grammar of ggvis

# ggvis follows the grammar of graphics.
#You can combine a set of data, properties and marks with the following format.

#<data>  %>%
#  ggvis(~<x property>,~<y property>,
#        fill = ~<fill property>, ...) %>%
#  layer_<marks>()



# Adapt the code: show bars instead of points
# pressure %>% ggvis(~temperature, ~pressure) %>% layer_points()
pressure %>% ggvis(~temperature, ~pressure) %>% layer_bars()

# Adapt the code: show lines instead of points
# pressure %>% ggvis(~temperature, ~pressure) %>% layer_points()
pressure %>% ggvis(~temperature, ~pressure) %>% layer_lines()

# Extend the code: map the fill property to the temperature variable
# pressure %>% ggvis(~temperature, ~pressure) %>% layer_points()
pressure %>% ggvis(~temperature, ~pressure, fill = ~temperature) %>% layer_points()

# Extend the code: map the size property to the pressure variable
# pressure %>% ggvis(~temperature, ~pressure) %>% layer_points()
pressure %>% ggvis(~temperature, ~pressure, size = ~pressure) %>% layer_points()


#----------

# 4 essential components of a graph
# Every ggvis graph contains 4 essential components: data, a coordinate system, marks and corresponding properties.
# By changing the values of each of these components you can create a vast array of unique plots.

# eg.
  
  faithful %>%
  ggvis(~waiting, ~eruptions, fill := "red") %>%
  layer_points() %>%
  add_axis("y", title = "Duration of eruption (m)",
           values = c(2, 3, 4, 5), subdivide = 9) %>%
  add_axis("x", title = "Time since previous eruption (m)")


