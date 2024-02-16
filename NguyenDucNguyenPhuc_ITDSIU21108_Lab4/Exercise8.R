library(dplyr)
# install.packages("flextable", dependencies = TRUE)
library(flextable)

my_table <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarise(
    mean(Prices, na.rm = TRUE),
    Median = median(Prices, na.rm = TRUE),
    Standard_Deviation = sd(Prices, na.rm = TRUE)
  )

my_table

mytable <- package:flextable(my_table)

save_as_image(mytable, path = "my_table.png", width = 800, height = 400)
