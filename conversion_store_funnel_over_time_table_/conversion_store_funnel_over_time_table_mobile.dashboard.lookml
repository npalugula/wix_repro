- dashboard: conversion_store_funnel_over_time_table_mobile
  extends:  [conversion_store_funnel_over_time_table_extension]
  elements:
  - name: "conversion_store_funnel_over_time_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
