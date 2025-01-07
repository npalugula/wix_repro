- dashboard: conversion_store_rate_by_product_lite_bar_chart_2_axis_advanced
  extends:  [conversion_store_rate_by_product_lite_bar_chart_2_axis_extension, conversion_product_lite_filters_more]
  elements:
  - name: "conversion_store_rate_by_product_lite_bar_chart_2_axis"
    listen:
      product_name: traffic_spes_measures.product_name
      product_price: products.product_price_number_dimension
      product_images_count: products.product_images_count_number_dimension
      product_desc_length: products.product_desc_length_number_dimension
