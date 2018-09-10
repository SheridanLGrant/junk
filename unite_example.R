require(tidyverse)

d <- tibble(letters = c('a', 'b', 'c', 'c'), numbers = c('1', '1', '2', '3'))
print(d)
summary(d)
# Summary isn't useful since variables aren't factors

d$letters <- as.factor(d$letters)
d$numbers <- as.factor(d$numbers)
summary(d)
# Now summary provides useful counts

new <- unite(d, combo, c(letters, numbers), remove = F)
print(new)
summary(new)
# New column is not a factor, this is a bit of a hassle...
