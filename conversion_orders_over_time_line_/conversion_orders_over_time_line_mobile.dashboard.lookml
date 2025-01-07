- dashboard: conversion_orders_over_time_line_mobile
  extends:  [conversion_orders_over_time_line_extension]
  elements:
  - name: "conversion_orders_over_time_line"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
