- dashboard: cart_filters_11_coupon_name
  extension: required
  filters:
  - name: coupon_name
    title: coupon_name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: cart_main
    field: cart_main.coupon_name
