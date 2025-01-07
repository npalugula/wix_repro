- dashboard: bookings_by_clients_table_extension
  extension : required
  extends : [filter_date, filter_select_columns, bookings_client_name_filter]
  preferred_viewer: dashboards-next
  title: "bookings_by_clients"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "bookings_by_clients_table"
    title_hidden: true
    model: analytics
    explore: bookings
    type: looker_grid
    fields: [bookings.comparison_timeframe_tab
            ,bookings.client_name_tab
            ,bookings.client_email_tab
            ,bookings.client_phone_tab
            ,bookings.client_new_returning_tab
            ,bookings.booking_status_tab
            ,bookings.service_title_tab
            ,bookings.booking_first_start_time_tab
            ,bookings.booking_session_staff_name_tab
            ,bookings.booking_service_details_tab
            ,bookings.payment_paid_by_tab
            ,bookings.plan_name_tab
            ,bookings.payment_status_tab
            ,bookings.booking_platform_tab
            ,bookings.booked_by_tab
            ,bookings.service_type_tab
            ,bookings.service_category_tab
            ,bookings.deleted_service_tab
            #,bookings.service_image_tab
            ,bookings.is_cancelled_session_tab
            ,bookings.booking_sessions_location_type_tab
            ,bookings.booking_sessions_location_name_tab
            ,bookings.confirmed_bookings_tab
            ,bookings.total_number_of_participants_tab
            ,bookings.canceled_bookings_tab
            ,bookings.amount_paid_tab
            ,bookings.discount_tab
            ,bookings.amount_pending_tab
            ,bookings.amount_owed_tab
            ,bookings.amount_local_currency_tab
            ,bookings.total_bookings_count_tab
            ,bookings.booking_sessions_count_tab
            ,bookings.booking_attendees_tab
            ,bookings.booking_no_shows_tab
            ,bookings.booking_unique_clients_tab
    ]
    filters:
      bookings.comparison_period: selectedPeriod
    sorts: [bookings.confirmed_bookings_tab desc, bookings.amount_pending_tab desc, bookings.amount_paid_tab desc]
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
      bookings.confirmed_bookings_tab:
        is_active: false
    series_text_format:
      bookings.comparison_timeframe_tab:
        fg_color: "#162D3D"
      bookings.client_name_tab:
        fg_color: "#162D3D"
      bookings.client_email_tab:
        fg_color: "#162D3D"
      bookings.client_phone_tab:
        fg_color: "#162D3D"
      bookings.client_new_returning_tab:
        fg_color: "#162D3D"
      bookings.booking_status_tab:
        fg_color: "#162D3D"
      bookings.service_title_tab:
        fg_color: "#162D3D"
      bookings.booking_first_start_time_tab:
        fg_color: "#162D3D"
      bookings.booking_session_staff_name_tab:
        fg_color: "#162D3D"
      bookings.booking_service_details_tab:
        fg_color: "#162D3D"
      bookings.payment_paid_by_tab:
        fg_color: "#162D3D"
      bookings.plan_name_tab:
        fg_color: "#162D3D"
      bookings.payment_status_tab:
        fg_color: "#162D3D"
      bookings.booking_platform_tab:
        fg_color: "#162D3D"
      bookings.booked_by_tab:
        fg_color: "#162D3D"
      bookings.service_type_tab:
        fg_color: "#162D3D"
      bookings.service_category_tab:
        fg_color: "#162D3D"
      bookings.deleted_service_tab:
        fg_color: "#162D3D"
      bookings.service_image_tab:
        fg_color: "#162D3D"
      bookings.is_cancelled_session_tab:
        fg_color: "#162D3D"
      bookings.booking_sessions_location_type_tab:
        fg_color: "#162D3D"
      bookings.booking_sessions_location_name_tab:
        fg_color: "#162D3D"
      bookings.confirmed_bookings_tab:
        fg_color: "#162D3D"
      bookings.total_number_of_participants_tab:
        fg_color: "#162D3D"
      bookings.canceled_bookings_tab:
        fg_color: "#162D3D"
      bookings.amount_paid_tab:
        fg_color: "#162D3D"
      bookings.discount_tab:
        fg_color: "#162D3D"
      bookings.amount_pending_tab:
        fg_color: "#162D3D"
      bookings.amount_owed_tab:
        fg_color: "#162D3D"
      bookings.amount_local_currency_tab:
        fg_color: "#162D3D"
      bookings.total_bookings_count_tab:
        fg_color: "#162D3D"
      bookings.booking_sessions_count_tab:
        fg_color: "#162D3D"
      bookings.booking_attendees_tab:
        fg_color: "#162D3D"
      bookings.booking_no_shows_tab:
        fg_color: "#162D3D"
      bookings.booking_unique_clients_tab:
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
    hidden_fields: [bookings.comparison_timeframe_tab
            ,bookings.client_new_returning_tab
            ,bookings.booking_status_tab
            ,bookings.service_title_tab
            ,bookings.booking_first_start_time_tab
            ,bookings.booking_session_staff_name_tab
            ,bookings.booking_service_details_tab
            ,bookings.payment_paid_by_tab
            ,bookings.plan_name_tab
            ,bookings.payment_status_tab
            ,bookings.booking_platform_tab
            ,bookings.booked_by_tab
            ,bookings.service_type_tab
            ,bookings.service_category_tab
            ,bookings.deleted_service_tab
            #,bookings.service_image_tab
            ,bookings.is_cancelled_session_tab
            ,bookings.booking_sessions_location_type_tab
            ,bookings.booking_sessions_location_name_tab
            ,bookings.total_number_of_participants_tab
            ,bookings.amount_owed_tab
            ,bookings.total_bookings_count_tab
            ,bookings.booking_sessions_count_tab
            ,bookings.booking_attendees_tab
            ,bookings.booking_no_shows_tab
            ,bookings.booking_unique_clients_tab
            ,bookings.client_phone_tab]
    listen:
      date: bookings.custom_period
      columns_to_show: bookings.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: bookings
    field: bookings.custom_period
  - name: columns_to_show
    default_value: 02.{{_localization['client_name']}},03.{{_localization['client_email']}},22.{{_localization['confirmed_bookings']}},24.{{_localization['canceled_bookings']}},25.{{_localization['amount_paid']}},26.{{_localization['discount']}},27.{{_localization['booking_amount_pending']}},29.{{_localization['amount_local_currency']}}
    explore: bookings_columns
    field: bookings_columns.translation
  - name: client_name
    explore: bookings
    field: bookings.client_name
