- dashboard: cart_filters_04_cart_currency
  extension: required
  filters:
  - name: cart_currency
    title: cart_currency
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.cart_currency
