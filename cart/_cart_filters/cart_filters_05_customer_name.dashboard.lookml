- dashboard: cart_filters_05_customer_name
  extension: required
  filters:
  - name: customer_name
    title: customer_name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.customer_name
