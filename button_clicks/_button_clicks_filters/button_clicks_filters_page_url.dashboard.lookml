- dashboard: button_clicks_filters_page_url
  extension: required
  filters:
  - name: page_url
    title: "button_clicks_page_url"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: traffic_main
    field: traffic_main.page_url
