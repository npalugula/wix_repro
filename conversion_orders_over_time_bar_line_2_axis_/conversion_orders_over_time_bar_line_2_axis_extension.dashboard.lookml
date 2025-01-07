- dashboard: conversion_orders_over_time_bar_line_2_axis_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, filter_choose_measure_2]
  preferred_viewer: dashboards-next
  title: "conversion_order_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_orders_over_time_bar_line_2_axis"
    title_hidden: true
    model: analytics
    explore: conversion
    type: looker_line
    fields: [traffic.comparison_timeframe, traffic.choosable_measure,
      traffic.choosable_measure_rate]
    filters: {}
    sorts: [traffic.comparison_timeframe desc]
    limit: 1500
    column_limit: 50
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
    show_value_labels: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: traffic.choosable_measure,
            id: traffic.choosable_measure, name: choosable_measure}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: right, series: [{axisId: traffic.choosable_measure_rate,
            id: traffic.choosable_measure_rate, name: choosable_measure_rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    hide_legend: false
    font_size: 12px
    series_types:
      traffic.choosable_measure: column
    series_colors: {}
    series_labels: {}
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
    listen:
      date: traffic.custom_period
      date_granularity: traffic.timeframe_granularity
      choose_measure: traffic.choose_measure
      choose_measure_2: traffic.choose_measure_rate
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion
    field: traffic.custom_period
  - name: date_granularity
    explore: conversion
    default_value: week
    field: traffic.timeframe_granularity
  - name: choose_measure
    title: "choose_measure"
    default_value: sessions
    ui_config:
      options:
      - sessions
      - visitors
      - customersCount
      - orders
    explore: conversion
    field: traffic.choose_measure
  - name: choose_measure_2
    title: "choose_measure_rate"
    default_value: convSalesRate
    ui_config:
      options:
      - visitorsToCustomersRate
      - convSalesRate
    explore: conversion
    field: traffic.choose_measure_rate
