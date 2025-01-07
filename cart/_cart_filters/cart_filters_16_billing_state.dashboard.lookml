- dashboard: cart_filters_16_billing_state
  extension: required
  filters:
  - name: billing_state
    title: billing_state
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.billing_state
