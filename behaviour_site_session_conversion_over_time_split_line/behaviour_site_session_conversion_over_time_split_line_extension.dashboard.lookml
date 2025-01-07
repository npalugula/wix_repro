- dashboard: behaviour_site_session_conversion_over_time_split_line_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, filter_split_by]
  preferred_viewer: dashboards-next
  title: "behaviour_site_session_conversion_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "behaviour_site_session_conversion_over_time_split_line"
    title_hidden: true
    model: analytics
    explore: conversion
    type: looker_area
    fields: [traffic.comparison_timeframe, traffic.choosable_measure]
    pivots: [traffic.choosable_split_by]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: traffic.choosable_measure,
            id: Current period - traffic.choosable_measure, name: Current period},
          {axisId: traffic.choosable_measure, id: Previous Period - traffic.choosable_measure,
            name: Previous Period}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    font_size: 12px
    series_types: {}
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
      split_by: traffic.split_by
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
    field: traffic.timeframe_granularity
  - name: choose_measure
    title: "choose_measure"
    default_value: convSalesRate
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
