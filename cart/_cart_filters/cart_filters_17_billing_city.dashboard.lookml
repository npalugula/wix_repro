- dashboard: cart_filters_17_billing_city
  extension: required
  filters:
  - name: billing_city
    title: billing_city
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.billing_city
