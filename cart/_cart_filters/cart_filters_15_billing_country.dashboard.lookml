- dashboard: cart_filters_15_billing_country
  extension: required
  filters:
  - name: billing_country
    title: billing_country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.billing_country
