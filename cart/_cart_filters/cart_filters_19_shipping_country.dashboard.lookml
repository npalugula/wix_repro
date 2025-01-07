- dashboard: cart_filters_19_shipping_country
  extension: required
  filters:
  - name: shipping_country
    title: shipping_country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.shipping_country
