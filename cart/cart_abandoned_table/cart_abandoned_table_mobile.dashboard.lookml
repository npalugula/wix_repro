- dashboard: cart_abandoned_table_mobile
  extends: [cart_abandoned_table_extension]
  elements:
  - name: "cart_abandoned_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
