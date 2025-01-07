- dashboard: button_clicks_filters_element_type
  extension: required
  filters:
  - name: element_type
    title: "element_type"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: analytics
    explore: button_clicks
    field: traffic_main.element_type
