- dashboard: cart_filters_07_is_abandoned_emailed
  extension: required
  filters:
  - name: is_abandoned_emailed
    title: is_abandoned_emailed
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: dropdown_menu
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.is_abandoned_emailed
