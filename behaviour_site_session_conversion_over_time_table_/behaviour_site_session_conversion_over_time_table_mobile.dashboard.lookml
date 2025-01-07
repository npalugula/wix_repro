- dashboard: behaviour_site_session_conversion_over_time_table_mobile
  extends : [behaviour_site_session_conversion_over_time_table_extension]
  elements:
  - name: "behaviour_site_session_conversion_over_time_table"
    size_to_fit: false
  filters:
  - name: date_granularity
    ui_config:
      display: overflow
  - name: columns_to_show
    ui_config:
      display: overflow
  - name: session_user_aquisition
    ui_config:
      display: overflow
