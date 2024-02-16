average_house_based_Type <- data_metro_zip %>%
  group_by(RegionType) %>%
  summarise(
    mean(Prices, na.rm = TRUE)
  )

average_house_based_Type