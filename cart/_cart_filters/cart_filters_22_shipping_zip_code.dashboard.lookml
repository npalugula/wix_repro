- dashboard: cart_filters_22_shipping_zip_code
  extension: required
  filters:
  - name: shipping_zip_code
    title: shipping_zip_code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.shipping_zip_code
