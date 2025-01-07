- dashboard: cart_filters_26_pickup_zip_code
  extension: required
  filters:
  - name: pickup_zip_code
    title: pickup_zip_code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.pickup_zip_code
