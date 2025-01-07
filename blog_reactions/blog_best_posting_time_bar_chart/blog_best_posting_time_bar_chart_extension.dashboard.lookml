- dashboard: blog_best_posting_time_bar_chart_extension
  extension : required
  extends : [filter_date, filter_choose_measure]
  preferred_viewer: dashboards-next
  title: "best_posting_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: blog_best_posting_time_bar_chart
    model: analytics
    explore: blog
    type: looker_column
    fields: [blog_main.choosable_measure_by_time_of_the_day, blog_main.hh12_created_hour_of_day]
    fill_fields: [blog_main.hh12_created_hour_of_day]
    filters:
      blog_main.comparison_period: selectedPeriod
      #blog_main.split_by: visitorType
      #blog_main.timeframe_granularity: day
      #blog_main.columns_to_show: ''
    sorts: [blog_main.hh12_created_hour_of_day]
    limit: 500
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_value_labels: false
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
    y_axes: []
    font_size: 16px
    series_types: {}
    column_group_spacing_ratio: 0.4
    totals_rotation: 360
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      date: blog_main.custom_period
      choose_measure: blog_main.choose_measure_by_time_of_the_day
      day_of_week: blog_main.dd_created_day_of_week
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: blog
    field: blog_main.custom_period
  - name: choose_measure
    default_value: AvgViewsCount
    ui_config:
      type: dropdown_menu
      display: inline
    explore: blog
    field: blog_main.choose_measure_by_time_of_the_day
  - name: day_of_week
    title: day_of_week
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: analytics
    explore: blog
    listens_to_filters: []
    field: blog_main.dd_created_day_of_week
