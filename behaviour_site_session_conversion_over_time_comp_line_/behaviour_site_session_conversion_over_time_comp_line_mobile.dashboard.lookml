- dashboard: behaviour_site_session_conversion_over_time_comp_line_mobile
  extends : [behaviour_site_session_conversion_over_time_comp_line_extension]
  elements:
  - name: "behaviour_site_session_conversion_over_time_comp_line"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
