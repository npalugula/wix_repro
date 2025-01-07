- dashboard: booking_sessions_filter_service_name
  extension: required
  filters:
  - name: service_title
    title: "service_title"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: analytics
    explore: bookings_sessions
    listens_to_filters: []
    field: bookings_sessions.service_title_val
