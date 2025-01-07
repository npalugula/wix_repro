- dashboard: cart_filters_20_shipping_state
  extension: required
  filters:
  - name: shipping_state
    title: shipping_state
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.shipping_state
