- dashboard: cart_funnel_over_time_combo_chart_mobile
  extends: cart_funnel_over_time_combo_chart_extension
  elements:
  - name: "cart_funnel_over_time_combo_chart"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: selected_rate
    ui_config:
      display: overflow
