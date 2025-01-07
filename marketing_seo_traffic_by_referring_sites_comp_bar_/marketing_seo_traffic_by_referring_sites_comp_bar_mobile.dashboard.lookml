- dashboard: marketing_seo_traffic_by_referring_sites_comp_bar_mobile
  extends : [marketing_seo_traffic_by_referring_sites_comp_bar_extension]
  elements:
  - name: "marketing_seo_traffic_by_referring_sites_comp_bar"
    size_to_fit: false
  filters:
  - name: comparison_period
    ui_config:
      display: overflow
  - name: top_n
    ui_config:
      display: overflow
  - name: conversion_choose_dimension
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
