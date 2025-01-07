- dashboard: filter_choose_measure_type
  extension : required
  filters:
  - name: choose_measure_type
    title: "choose_measure_type"
    #type: field_filter
    type: field_filter
    allow_multiple_values: false
    default_value: cartCount
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options:
      - cartCount
      - cartAmount
    model: analytics
    explore: cart_main
    field: cart_main.choose_measure_type
