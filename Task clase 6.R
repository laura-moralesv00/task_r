df = import("https://www.datos.gov.co/resource/epsv-yhtj.csv") %>%
  as_tibble() %>%
  select(., -cod_ase_) %>%
  mutate(.,ifelse(is.na(estrato),1,estrato))