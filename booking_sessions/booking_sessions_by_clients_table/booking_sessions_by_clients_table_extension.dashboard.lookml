- dashboard: booking_sessions_by_clients_table_extension
  extension : required
  extends : [filter_date, filter_select_columns, bookings_client_name_filter]
  title: "booking_sessions_top_clients"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "booking_sessions_by_clients_table"
    title_hidden: true
    model: analytics
    explore: bookings_sessions
    type: looker_grid
    fields: [bookings_sessions.comparison_timeframe_tab
            ,bookings_sessions.client_name_tab
            ,bookings_sessions.client_email_tab
            ,bookings_sessions.client_new_returning_tab
            ,bookings_sessions.booking_status_tab
            ,bookings_sessions.service_title_tab
            ,bookings_sessions.booking_session_staff_name_tab
            ,bookings_sessions.booking_service_details_tab
            ,bookings_sessions.booking_sessions_start_time_tab
            ,bookings_sessions.booking_sessions_start_week_tab
            ,bookings_sessions.payment_paid_by_tab
            ,bookings_sessions.payment_status_tab
            ,bookings_sessions.plan_name_tab
            ,bookings_sessions.booking_platform_tab
            ,bookings_sessions.booked_by_tab
            ,bookings_sessions.service_type_tab
            ,bookings_sessions.service_category_tab
            ,bookings_sessions.deleted_service_tab
            #,bookings_sessions.service_image_tab
            ,bookings_sessions.is_cancelled_session_tab
            ,bookings_sessions.booking_sessions_location_type_tab
            ,bookings_sessions.booking_sessions_location_name_tab
            ,bookings_sessions.confirmed_bookings_tab
            ,bookings_sessions.total_number_of_participants_tab
            ,bookings_sessions.canceled_bookings_tab
            ,bookings_sessions.amount_paid_tab
            ,bookings_sessions.amount_pending_tab
            ,bookings_sessions.amount_owed_tab
            ,bookings_sessions.amount_local_currency_tab
            ,bookings_sessions.total_bookings_count_tab
            ,bookings_sessions.booking_sessions_count_tab
            ,bookings_sessions.booking_sessions_duration_tab
            ,bookings_sessions.booking_sessions_capacity_tab
            ,bookings_sessions.booking_occupancy_rate_tab
            ,bookings_sessions.booking_attendees_tab
            ,bookings_sessions.booking_no_shows_tab
            ,bookings_sessions.booking_check_in_rate_tab
            ,bookings_sessions.booking_session_avg_participants_in_class_tab
            ,bookings_sessions.booking_unique_clients_tab
            ,bookings_sessions.canceled_clients_bookings_tab
            ,bookings_sessions.booking_cancelled_sessions_count_tab
    ]
    filters:
      bookings_sessions.comparison_period: selectedPeriod
      bookings_sessions.session_id: "-NULL"
      bookings.total_bookings: ">0"
    sorts: [bookings_sessions.booking_sessions_count_tab desc]
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
      bookings_sessions.client_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_email_tab:
        fg_color: "#162D3D"
      bookings_sessions.client_new_returning_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_status_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_title_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_session_staff_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_service_details_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_start_time_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_start_week_tab:
        fg_color: "#162D3D"
      bookings_sessions.payment_paid_by_tab:
        fg_color: "#162D3D"
      bookings_sessions.plan_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.payment_status_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_platform_tab:
        fg_color: "#162D3D"
      bookings_sessions.booked_by_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_type_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_category_tab:
        fg_color: "#162D3D"
      bookings_sessions.deleted_service_tab:
        fg_color: "#162D3D"
      bookings_sessions.service_image_tab:
        fg_color: "#162D3D"
      bookings_sessions.is_cancelled_session_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_location_type_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_location_name_tab:
        fg_color: "#162D3D"
      bookings_sessions.confirmed_bookings_tab:
        fg_color: "#162D3D"
      bookings_sessions.total_number_of_participants_tab:
        fg_color: "#162D3D"
      bookings_sessions.canceled_bookings_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_paid_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_pending_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_owed_tab:
        fg_color: "#162D3D"
      bookings_sessions.amount_local_currency_tab:
        fg_color: "#162D3D"
      bookings_sessions.total_bookings_count_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_count_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_duration_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_sessions_capacity_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_occupancy_rate_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_attendees_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_no_shows_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_check_in_rate_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_session_avg_participants_in_class_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_unique_clients_tab:
        fg_color: "#162D3D"
      bookings_sessions.canceled_clients_bookings_tab:
        fg_color: "#162D3D"
      bookings_sessions.booking_cancelled_sessions_count_tab:
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
    hidden_fields: [bookings_sessions.comparison_timeframe_tab
            ,bookings_sessions.booking_status_tab
            ,bookings_sessions.service_title_tab
            ,bookings_sessions.booking_session_staff_name_tab
            ,bookings_sessions.booking_service_details_tab
            ,bookings_sessions.booking_sessions_start_time_tab
            ,bookings_sessions.booking_sessions_start_week_tab
            ,bookings_sessions.payment_paid_by_tab
            ,bookings_sessions.plan_name_tab
            ,bookings_sessions.payment_status_tab
            ,bookings_sessions.booking_platform_tab
            ,bookings_sessions.booked_by_tab
            ,bookings_sessions.service_type_tab
            ,bookings_sessions.service_category_tab
            ,bookings_sessions.deleted_service_tab
            #,bookings_sessions.service_image_tab
            ,bookings_sessions.is_cancelled_session_tab
            ,bookings_sessions.booking_sessions_location_type_tab
            ,bookings_sessions.booking_sessions_location_name_tab
            ,bookings_sessions.confirmed_bookings_tab
            ,bookings_sessions.total_number_of_participants_tab
            ,bookings_sessions.canceled_bookings_tab
            ,bookings_sessions.amount_paid_tab
            ,bookings_sessions.amount_pending_tab
            ,bookings_sessions.amount_owed_tab
            ,bookings_sessions.amount_local_currency_tab
            ,bookings_sessions.total_bookings_count_tab
            ,bookings_sessions.booking_sessions_duration_tab
            ,bookings_sessions.booking_sessions_capacity_tab
            ,bookings_sessions.booking_occupancy_rate_tab
            ,bookings_sessions.booking_session_avg_participants_in_class_tab
            ,bookings_sessions.booking_unique_clients_tab
            ,bookings_sessions.canceled_clients_bookings_tab
            ,bookings_sessions.booking_cancelled_sessions_count_tab]
    listen:
      date: bookings_sessions.custom_period
      columns_to_show: bookings_sessions.columns_to_show
      client_name: bookings.client_name
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: bookings_sessions
    field: bookings_sessions.custom_period
  - name: columns_to_show
    default_value: 02.{{_localization['client_name']}},03.{{_localization['client_email']}},04.{{_localization['client_new_returning']}},30.{{_localization['booking_sessions_count']}},34.{{_localization['booking_attendees']}},36.{{_localization['booking_check_in_rate']}},35.{{_localization['booking_no_shows']}}
    explore: bookings_sessions_columns
    field: bookings_sessions_columns.translation
  - name: client_name
    ui_config:
      type: tag_list
      display: inline
    explore: bookings_sessions
    field: bookings.client_name
