- dashboard: booking_sessions_by_clients_comp_bar_extension
  extension: required
  extends: [filter_date, filter_compare_to, filter_top_n_items, filter_choose_measure]
  preferred_viewer: dashboards-next
  title: "booking_sessions_by_clients"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "booking_sessions_by_clients_comp_bar"
    title_hidden: true
    model: analytics
    explore: bookings_sessions
    type: looker_bar
    fields: [bookings.client_name, bookings_sessions.rank_limit, bookings_sessions.choosable_measure, bookings_sessions.is_current_period_name]
    pivots: [bookings_sessions.is_current_period_name]
    sorts: [bookings_sessions.is_current_period_name 0, rank]
    filters:
      bookings_sessions.choosable_measure: ">0"
      bookings.total_bookings: ">0"
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: showhide, label: Show/Hide, expression: "${bookings_sessions.rank_limit}>=coalesce(${row_num},0)",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: row_num, label: row_num, expression: 'index(row(),row())',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: rank, label: rank, expression: "rank(\
          \ sum(pivot_row(${bookings_sessions.choosable_measure}))\n    , 0)", value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: supermeasure, _type_hint: number}]
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#20455E"
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: []
    font_size: 12px
    series_types: {}
    series_colors: {}
    series_labels:
      bookings_sessions.dynamic_dimension_page___null - bookings_sessions.dynamic_measure_page: Chosen
        Measure
    x_axis_label_rotation: 0
    label_rotation: 360
    label_color: ["#2473B0"]
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    y_axes: [{showValues: false}]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    defaults_version: 1
    hidden_fields: [bookings_sessions.rank_limit, showhide, total, row_num, rank]
    hidden_points_if_no: [showhide]
    listen:
      date: bookings_sessions.custom_period
      comparison_period: bookings_sessions.comparison_period
      top_n: bookings_sessions.top_n
      choose_measure: bookings_sessions.choose_measure
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: bookings_sessions
    field: bookings_sessions.custom_period
  - name: comparison_period
    explore: bookings_sessions
    field: bookings_sessions.comparison_period
  - name: top_n
    explore: bookings_sessions
    field: bookings_sessions.rank_limit
  - name: choose_measure
    default_value: sessionsCount
    ui_config:
      options:
      - sessionsCount
      - checkedIn
      - checkedInRate
      - noShows
    explore: bookings_sessions
    field: bookings_sessions.choose_measure
