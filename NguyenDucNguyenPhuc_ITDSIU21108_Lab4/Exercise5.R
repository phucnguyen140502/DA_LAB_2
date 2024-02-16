data_metro_zip %>%
  group_by(RegionType) %>%
  summarise(n = n()) %>%
  mutate(freq = n / sum(n, na.rm = TRUE))

