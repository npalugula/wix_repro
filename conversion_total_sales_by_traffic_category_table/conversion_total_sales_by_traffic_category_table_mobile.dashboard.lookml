- dashboard: conversion_total_sales_by_traffic_category_table_mobile
  extends:  [conversion_total_sales_by_traffic_category_table_extension]
  elements:
  - name: "conversion_total_sales_by_traffic_category_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
