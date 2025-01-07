- dashboard: cart_funnel_over_time_line_mobile
  extends: cart_funnel_over_time_line_extension
  elements:
  - name: "cart_funnel_over_time_line"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure_type
    ui_config:
      display: overflow
