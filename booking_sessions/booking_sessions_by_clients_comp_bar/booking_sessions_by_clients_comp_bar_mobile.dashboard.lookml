- dashboard: booking_sessions_by_clients_comp_bar_mobile
  extends:  [booking_sessions_by_clients_comp_bar_extension]
  elements:
  - name: "booking_sessions_by_clients_comp_bar"
    size_to_fit: false
  filters:
  - name: comparison_period
    ui_config:
      display: overflow
  - name: top_n
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
