- dashboard: bookings_over_time_split_bar_mobile
  extends:  [bookings_over_time_split_bar_extension]
  elements:
  - name: "bookings_over_time_split_bar"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: split_by
    ui_config:
      display: overflow
