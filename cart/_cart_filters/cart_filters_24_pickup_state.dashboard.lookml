- dashboard: cart_filters_24_pickup_state
  extension: required
  filters:
  - name: pickup_state
    title: pickup_state
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.pickup_state
