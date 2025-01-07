- dashboard: cart_funnel_over_time_table_mobile
  extends: cart_funnel_over_time_table_extension
  elements:
  - name: "cart_funnel_over_time_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
