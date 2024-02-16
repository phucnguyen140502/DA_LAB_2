data_metro_zip %>%
  group_by(StateName) %>%
  summarise(
    average_house_price = mean(Prices, na.rm = TRUE)
  )

