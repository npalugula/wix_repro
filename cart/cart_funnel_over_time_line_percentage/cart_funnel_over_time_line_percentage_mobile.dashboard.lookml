- dashboard: cart_funnel_over_time_line_percentage_mobile
  extends: cart_funnel_over_time_line_percentage_extension
  elements:
  - name: "cart_funnel_over_time_line_percentage"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_funnel_rate
    ui_config:
      display: overflow
