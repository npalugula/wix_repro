- dashboard: cart_filters_13_line_item_options
  extension: required
  filters:
  - name: line_item_options
    title: line_item_options
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_item.line_item_options
