- dashboard: cart_filters_18_billing_zip_code
  extension: required
  filters:
  - name: billing_zip_code
    title: billing_zip_code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.billing_zip_code
