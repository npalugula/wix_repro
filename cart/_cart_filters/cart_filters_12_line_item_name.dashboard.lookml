- dashboard: cart_filters_12_line_item_name
  extension: required
  filters:
  - name: line_item_name
    title: line_item_name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_item.line_item_name
