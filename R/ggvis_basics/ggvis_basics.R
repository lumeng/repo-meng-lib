library("ggvis")
library("magrittr")
mtcars %>%
    ggvis(x = ~wt, y = ~mpg) %>%
    layer_points()



library(dplyr)
mtcars %>%
    ggvis(x = ~mpg, y = ~disp) %>%
    mutate(disp = disp / 61.0237) %>% # convert engine displacment to litres
    layer_points()


mtcars %>% 
    ggvis(~wt, ~mpg, fill := "red", stroke := "black") %>% 
    layer_points()


