- dashboard: cart_filters_09_customer_type
  extension: required
  filters:
  - name: customer_type
    title: customer_type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.customer_type
