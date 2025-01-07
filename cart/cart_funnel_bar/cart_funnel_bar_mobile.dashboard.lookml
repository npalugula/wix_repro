- dashboard: cart_funnel_bar_mobile
  extends: [cart_funnel_bar_extension]
  elements:
  - name: "cart_funnel_bar"
    size_to_fit: false
  filters:
  - name: choose_measure_type
    ui_config:
      display: overflow
