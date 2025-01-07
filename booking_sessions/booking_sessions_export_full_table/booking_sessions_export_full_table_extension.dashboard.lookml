- dashboard: booking_sessions_export_full_table_extension
  extension : required
  extends : [filter_date]
  title: "booking_sessions_export_full"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "booking_sessions_export_full_table"
    title_hidden: true
    model: analytics
    explore: bookings_sessions_export
    type: looker_grid
    fields: [bookings_sessions.booking_session_start_date_tab
            ,bookings_sessions.booking_sessions_start_time_tab
            ,bookings_sessions.booking_date_created_tab
            ,bookings_sessions.client_name_tab
            ,bookings_sessions.client_email_tab
            ,bookings_sessions.client_phone_tab
            ,bookings_sessions.client_address_tab
            ,bookings_sessions.booking_number_of_participants_tab
            ,bookings_sessions.booking_sessions_duration_tab
            ,bookings_sessions.service_title_tab
            ,bookings_sessions.service_type_tab
            ,bookings_sessions.booking_session_staff_name_tab
            ,bookings_sessions.booking_status_tab
            ,bookings_sessions.payment_status_tab
            ,bookings_sessions.payment_paid_by_tab
            ,bookings_sessions.amount_paid_tab
            ,bookings_sessions.amount_pending_tab
            ,bookings_sessions.coupon_name_tab
            ,bookings_sessions.plan_name_tab
            ,bookings_sessions.extra_field_1_tab
            ,bookings_sessions.extra_field_2_tab
            ,bookings_sessions.extra_field_3_tab
            ,bookings_sessions.extra_field_4_tab
            ,bookings_sessions.extra_field_5_tab
            ,bookings_sessions.extra_field_6_tab
    ]
    filters:
      bookings_sessions.comparison_period: selectedPeriod
      bookings_sessions.session_id: "-NULL"
    sorts: [bookings_sessions.booking_session_start_date_tab desc, bookings_sessions.booking_sessions_start_time_tab desc]
    limit: 1500
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      bookings_sesions.confirmed_bookings_tab:
        is_active: false
    series_text_format:
      bookings_sessions.comparison_timeframe_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_session_start_date_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_start_time_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_date_created_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_email_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_phone_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_address_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_number_of_participants_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_duration_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_title_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_type_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_session_staff_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_status_tab:
        fg_color: "#162D3D"
      bookings_sessions.payment_status_tab:
        fg_color: "#162D3D"
      bookings_sessions.payment_paid_by_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_paid_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_pending_tab:
        fg_color: "#162D3D"
      bookings_sessions.coupon_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.plan_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_1_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_2_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_3_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_4_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_5_tab:
        fg_color: "#162D3D"
      bookings_sessions.extra_field_6_tab:
        fg_color: "#162D3D"
    header_font_color: "#162D3D"
    header_background_color: "#C1E4FE"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [
                   ]
    listen:
      date: bookings_sessions.custom_period
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: bookings_sessions_export
    field: bookings_sessions.custom_period
