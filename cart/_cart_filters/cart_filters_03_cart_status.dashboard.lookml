- dashboard: cart_filters_03_cart_status
  extension: required
  filters:
  - name: cart_status
    title: cart_status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.cart_status
