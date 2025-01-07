- dashboard: cart_funnel_over_time_line_percentage_extension
  extension : required
  extends : [filter_date, filter_group_by_date]
  preferred_viewer: dashboards-next
  title: "carts_funnel_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "cart_funnel_over_time_line_percentage"
    title_hidden: true
    model: analytics
    explore: cart_main
    type: looker_line
    fields: [cart_main.choosable_funnel_rate, cart_main.comparison_timeframe]
    filters:
      cart_main.comparison_period: selectedPeriod
   #   cart_main.choose_funnel_rate: abandonedRate
    #sorts: [cart_main.hits_count desc]
    limit: 1500
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    x_axis_datetime_label: "%b %e"
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
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      date: cart_main.custom_period
      date_granularity: cart_main.timeframe_granularity
      choose_funnel_rate: cart_main.choose_funnel_rate
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: cart_main
    field: cart_main.custom_period
  - name: date_granularity
    explore: cart_main
    field: cart_main.timeframe_granularity
  - name: choose_funnel_rate
    title: "choose_funnel_rate"
    type: field_filter
    allow_multiple_values: false
    ui_config:
      type: dropdown_menu
      display: inline
    default_value: recoveryRate
    explore: cart_main
    field: cart_main.choose_funnel_rate
