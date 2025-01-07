- dashboard: cart_filters_14_line_item_sku
  extension: required
  filters:
  - name: line_item_sku
    title: line_item_sku
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_item.line_item_sku
