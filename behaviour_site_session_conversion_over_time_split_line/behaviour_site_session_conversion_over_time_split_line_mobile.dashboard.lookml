- dashboard: behaviour_site_session_conversion_over_time_split_line_mobile
  extends:  [behaviour_site_session_conversion_over_time_split_line_extension]
  elements:
  - name: "behaviour_site_session_conversion_over_time_split_line"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: split_by
    ui_config:
      display: overflow
