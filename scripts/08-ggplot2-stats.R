## Script 08: Visualization with ggplot2: Statistical transformations ##

# Load packages and dvdm correspondence


# Statistical transformations ---------------------------------------------

# Why does this work? Where does the y axis come from?
ggplot(letters, aes(year)) + 
  geom_bar()

# Or you can do the statistical transformation
letters %>% 
  group_by(year) %>% 
  summarise(count = n()) %>% 
  ggplot(aes(x = year, y = count)) +
    geom_bar(stat = "identity")


# Aesthetics --------------------------------------------------------------

# Add another variable with fill
ggplot(letters, aes(year, fill = destination)) + 
  geom_bar()


# Coordinates -------------------------------------------------------------

# Fix this plot by flipping the coordinates with coord_flip()
ggplot(letters, aes(destination)) + 
  geom_bar()

# Histogram ---------------------------------------------------------------

# Instead of the year variable, create a histogram with the date variable
ggplot(letters, aes(date)) + 
  geom_histogram(binwidth = 60)

# Play with the bin width to find a good number of bins.
