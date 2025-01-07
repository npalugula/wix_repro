- dashboard: conversion_orders_over_time_line_perc_mobile
  extends:  [conversion_orders_over_time_line_perc_extension]
  elements:
  - name: "conversion_orders_over_time_line_perc"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure_2
    ui_config:
      display: overflow
