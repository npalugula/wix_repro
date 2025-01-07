- dashboard: conversion_rest_funnel_over_time_table_mobile
  extends:  [conversion_rest_funnel_over_time_table_extension]
  elements:
  - name: "conversion_rest_funnel_over_time_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
