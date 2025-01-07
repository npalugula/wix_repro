- dashboard: bots_response_code_over_time_split_bar_mobile
  extends: bots_response_code_over_time_split_bar_extension
  elements:
  - name: "bots_response_code_over_time_split_bar"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: response_code_family
    ui_config:
      display: overflow
