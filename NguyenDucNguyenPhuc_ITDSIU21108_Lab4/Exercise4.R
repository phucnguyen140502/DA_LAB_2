house_based_Type <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarise(
    meadian_of = median(Prices, na.rm = TRUE),
    std_of = sd(Prices, na.rm = TRUE)
  )

house_based_Type