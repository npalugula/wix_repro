- dashboard: cart_filters_25_pickup_city
  extension: required
  filters:
  - name: pickup_city
    title: pickup_city
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.pickup_city
