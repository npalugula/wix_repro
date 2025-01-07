- dashboard: blog_best_posting_time_heatmap_extension
  extension : required
  extends : [filter_date, filter_choose_measure]
  preferred_viewer: dashboards-next
  title: "best_posting_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "blog_best_posting_time_heat_map"
    title_hidden: true
    model: analytics
    explore: blog
    type: looker_grid
    fields: [blog_main.hh12_created_hour_of_day, blog_main.choosable_measure_by_time_of_the_day,
      blog_main.dd_created_day_of_week]
    pivots: [blog_main.dd_created_day_of_week]
    fill_fields: [blog_main.hh12_created_hour_of_day, blog_main.dd_created_day_of_week]
    filters:
      blog_main.comparison_period: selectedPeriod
      blog_main.timeframe_granularity: day
    sorts: [blog_main.dd_created_day_of_week 0, blog_main.hh12_created_hour_of_day]
    limit: 500
    dynamic_fields: [{table_calculation: calculation, label: " ", expression: 'coalesce(${blog_main.choosable_measure_by_time_of_the_day},
          0)', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    pinned_columns: {}
    column_order: []
    show_totals: false
    show_row_totals: false
    series_column_widths:
      blog_main.dd_created_day_of_week: 143
      blog_main.hh12_created_hour_of_day: 170
      blog_main.hh12_created_hour_of_day: 50
    series_cell_visualizations:
      blog_main.choosable_measure_by_time_of_the_day:
        is_active: false
    series_text_format:
      blog_main.hh12_created_hour_of_day:
        align: right
      blog_main.choosable_measure_by_time_of_the_day:
        align: center
      calculation:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#162D3D"
    header_background_color: "#F8F9F9"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1C92EF",
        font_color: !!null '', color_application: {collection_id: wix_04_2022, custom: {
          id: d948ef75-cb7e-9cde-cdcf-c9c1cb61b64f, label: Custom, type: continuous,
          stops: [{color: "#E4F4FF", offset: 0}, {color: "#B7DDFB", offset: 25}, {
              color: "#8AC4F7", offset: 50}, {color: "#5CACF4", offset: 75}, {color: "#1C92EF",
              offset: 100}]}, options: {steps: 5, reverse: false, stepped: true, mirror: false}}, bold: false, italic: false, strikethrough: false, fields: [!!null '', calculation]}]
    show_title: false
    font_size_title: '24'
    show_date_range: false
    font_size_date: '16'
    target_color: red
    hidden_fields: [blog_main.choosable_measure_by_time_of_the_day]
    hidden_points_if_no: []
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    series_labels:
      blog_main.hh12_created_hour_of_day: Hour
      blog_main.dd_created_day_of_week: Day
    listen:
      date: blog_main.custom_period
      choose_measure: blog_main.choose_measure_by_time_of_the_day
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
