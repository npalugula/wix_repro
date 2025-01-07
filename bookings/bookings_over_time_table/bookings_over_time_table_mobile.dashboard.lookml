- dashboard: bookings_over_time_table_mobile
  extends : [bookings_over_time_table_extension]
  elements:
  - name: "bookings_over_time_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
