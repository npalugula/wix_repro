- dashboard: conversion_rest_rate_over_time_bar_chart_2_axis_mobile
  extends:  [conversion_rest_rate_over_time_bar_chart_2_axis_extension]
  elements:
  - name: "conversion_rest_rate_over_time_bar_chart_2_axis"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: choose_measure_2
    ui_config:
      display: overflow
