- dashboard: cart_filters_10_shipping_method
  extension: required
  filters:
  - name: shipping_method
    title: shipping_method
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.shipping_method
