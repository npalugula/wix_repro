- dashboard: conversion_total_sales_by_traffic_category_split_line_mobile
  extends:  [conversion_total_sales_by_traffic_category_split_line_extension]
  elements:
  - name: "conversion_total_sales_by_traffic_category_split_line"
    size_to_fit: false
  filters:
  - name: referrer_source
    ui_config:
      display: overflow
      type: checkboxes
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
