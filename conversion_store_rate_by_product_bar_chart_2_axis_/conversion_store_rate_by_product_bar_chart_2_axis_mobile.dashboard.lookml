- dashboard: conversion_store_rate_by_product_bar_chart_2_axis_mobile
  extends:  [conversion_store_rate_by_product_bar_chart_2_axis_extension]
  elements:
  - name: "conversion_store_rate_by_product_bar_chart_2_axis"
    size_to_fit: false
  filters:
  - name: top_n
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: choose_measure_2
    ui_config:
      display: overflow
