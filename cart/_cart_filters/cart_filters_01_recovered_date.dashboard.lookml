- dashboard: cart_filters_01_recovered_date
  extension: required
  filters:
  - name: recovered_date
    title: recovered_date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
    model: analytics
    explore: cart_main
    field: abandoned_cart.recovered_date
