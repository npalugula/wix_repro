- dashboard: booking_sessions_clients_money_owed_table_mobile
  extends:  [booking_sessions_clients_money_owed_table_extension]
  elements:
  - name: "booking_sessions_clients_money_owed_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
  - name: client_name
    ui_config:
      display: overflow
  - name: booking_session_staff_name
    ui_config:
      display: overflow
