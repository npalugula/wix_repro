- dashboard: button_clicks_over_time_line_mobile
  extends: button_clicks_over_time_line_extension
  elements:
  - name: "button_clicks_over_time_line"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
