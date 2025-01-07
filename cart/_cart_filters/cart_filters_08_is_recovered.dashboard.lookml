- dashboard: cart_filters_08_is_recovered
  extension: required
  filters:
  - name: is_recovered
    title: is_recovered
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: dropdown_menu
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.is_recovered
