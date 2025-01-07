- dashboard: cart_filters_02_completed_date
  extension: required
  filters:
  - name: completed_date
    title: completed_date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
      options: []
    model: analytics
    explore: cart_main
    field: cart_main.completed_date
