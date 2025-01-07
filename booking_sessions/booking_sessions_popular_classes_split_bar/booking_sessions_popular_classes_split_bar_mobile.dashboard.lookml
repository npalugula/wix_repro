- dashboard: booking_sessions_popular_classes_split_bar_mobile
  extends: [booking_sessions_popular_classes_split_bar_extension]
  elements:
  - name: "booking_sessions_popular_classes_split_bar"
    size_to_fit: false
  filters:
  - name: top_n
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
  - name: split_by
    ui_config:
      display: overflow
