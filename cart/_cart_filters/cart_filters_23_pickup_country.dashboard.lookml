- dashboard: cart_filters_23_pickup_country
  extension: required
  filters:
  - name: pickup_country
    title: pickup_country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.pickup_country
