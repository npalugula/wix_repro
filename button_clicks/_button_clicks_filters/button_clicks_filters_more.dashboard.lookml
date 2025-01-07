- dashboard: button_clicks_filters_more
  extension: required
  filters:
  - name: element_title
    title: "element_title"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: button_clicks
    field: traffic_main.element_title
  - name: element_linked_to
    title: "element_linked_to"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: button_clicks
    field: traffic_main.element_linked_to
  - name: element_linked_to_details
    title: "element_linked_to_details"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: button_clicks
    field: traffic_main.element_linked_to_details
