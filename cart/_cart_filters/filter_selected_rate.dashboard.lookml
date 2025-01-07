- dashboard: filter_selected_rate
  extension: required
  filters:
  - name: selected_rate
    title: "selected_rate"
    type: field_filter
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    #model: analytics
    listens_to_filters: []
