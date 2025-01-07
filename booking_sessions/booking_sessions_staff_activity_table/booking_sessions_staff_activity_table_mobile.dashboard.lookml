- dashboard: booking_sessions_staff_activity_table_mobile
  extends:  [booking_sessions_staff_activity_table_extension]
  elements:
  - name: "booking_sessions_staff_activity_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
