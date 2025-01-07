- dashboard: bots_response_code_over_time_split_bar_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, traffic_filters_03_response_code_family]
  preferred_viewer: dashboards-next
  title: "response_code_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "bots_response_code_over_time_split_bar"
    title_hidden: true
    model: analytics
    explore: bots_main
    type: looker_column
    fields: [bots_main.choosable_measure, bots_main.comparison_timeframe, bots_main.response_code_family]
    pivots: [bots_main.response_code_family]
    filters:
      bots_main.comparison_period: selectedPeriod
    sorts: [bots_main.choosable_measure desc 0, bots_main.response_code_family]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
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
    column_group_spacing_ratio: 0.2
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      bots_main.hits_count:
        is_active: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      date: bots_main.custom_period
      date_granularity: bots_main.timeframe_granularity
      choose_measure: bots_main.choose_measure
      response_code_family: bots_main.response_code_family
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    #title: "is_current_period_name"
    explore: bots_main
    field: bots_main.custom_period
  - name: date_granularity
    explore: bots_main
    field: bots_main.timeframe_granularity
  - name: choose_measure
    default_value: pagePathCount
    ui_config:
      #display: popover
      options:
      - pagePathCount
      - hitsCnt
    explore: bots_main
    field: bots_main.choose_measure
  - name: response_code_family
    default_value: 2XX,3XX,4XX,5XX
    ui_config:
      type: checkboxes
      display: popover
    explore: bots_main
    field: bots_main.response_code_family
