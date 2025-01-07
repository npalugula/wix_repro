- dashboard: marketing_seo_conversion_full_by_referring_site_comp_bar_y_axes_mobile
  extends : [marketing_seo_conversion_full_by_referring_site_comp_bar_y_axes_extension]
  elements:
  - name: "marketing_seo_conversion_full_by_referring_site_comp_bar_y_axes"
    size_to_fit: false
  filters:
  - name: top_n
    ui_config:
      display: overflow
  - name: conversion_choose_dimension
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
