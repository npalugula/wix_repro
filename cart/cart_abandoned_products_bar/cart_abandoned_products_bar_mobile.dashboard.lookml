- dashboard: cart_abandoned_products_bar_mobile
  extends: [cart_abandoned_products_bar_extension]
  elements:
  - name: "cart_abandoned_products_bar"
    size_to_fit: false
  filters:
  - name: top_n
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: selected_rate
    ui_config:
      display: overflow
