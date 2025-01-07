- dashboard: conversion_total_sales_by_traffic_category_split_bar_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, filter_split_by]
  preferred_viewer: dashboards-next
  title: "conversion_total_sales_by_traffic_category"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_total_sales_by_traffic_category_split_bar"
    title_hidden: true
    model: analytics
    explore: conversion
    type: looker_column
    fields: [traffic.choosable_measure, traffic.choosable_split_by,
      traffic.comparison_timeframe]
    pivots: [traffic.choosable_split_by]
    filters:
      traffic.comparison_period: selectedPeriod
    sorts: [traffic.choosable_split_by 0, traffic.comparison_timeframe]
    limit: 1500
    column_limit: 200
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
    totals_color: "#20455E"
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    hide_legend: false
    font_size: 12px
    series_types: {}
    series_colors: {}
    column_group_spacing_ratio: 0.2
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
    series_cell_visualizations:
      traffic.orders:
        is_active: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    listen:
      date: traffic.custom_period
      date_granularity: traffic.timeframe_granularity
      choose_measure: traffic.choose_measure
      split_by: traffic.split_by
      referrer_source: traffic.referrer_source
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: conversion
    field: traffic.custom_period
  - name: date_granularity
    ui_config:
      display: overflow
    explore: conversion
    field: traffic.timeframe_granularity
  - name: choose_measure
    title: "choose_measure"
    default_value: totalSales
    ui_config:
      options:
      - sessions
      - orders
      - totalSales
      - convSalesRate
    explore: conversion
    field: traffic.choose_measure
  - name: split_by
    title: "split_by"
    default_value: referrerSource
    ui_config:
      options:
      - referrerSource
      - refDomain
      - refSourceAndDomain
    explore: conversion
    field: traffic.split_by
  - name: referrer_source
    title: "referrer_source"
    type: field_filter
    default_value: "{{ _localization['social'] }},{{ _localization['organic_search'] }}"
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: analytics
    explore: conversion
    field: traffic.referrer_source
    listens_to_filters: [date]
