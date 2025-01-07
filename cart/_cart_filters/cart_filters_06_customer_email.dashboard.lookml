- dashboard: cart_filters_06_customer_email
  extension: required
  filters:
  - name: customer_email
    title: customer_email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.customer_email
