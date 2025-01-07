- dashboard: cart_filters_21_shipping_city
  extension: required
  filters:
  - name: shipping_city
    title: shipping_city
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.shipping_city
