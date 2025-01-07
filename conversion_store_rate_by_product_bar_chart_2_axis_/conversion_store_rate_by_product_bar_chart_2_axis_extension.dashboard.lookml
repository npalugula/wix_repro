- dashboard: conversion_store_rate_by_product_bar_chart_2_axis_extension
  #extension : required
  extends : [filter_date, filter_top_n_items, filter_choose_measure, filter_choose_measure_2]
  preferred_viewer: dashboards-next
  title: "conversion_store_rate_by_product"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_store_rate_by_product_bar_chart_2_axis"
    title_hidden: true
    model: analytics
    explore: conversion_lite
    type: looker_line
    fields: [products.product_name, traffic.choosable_measure, traffic.rank_limit, traffic.choosable_measure_rate]
    filters:
      products.product_name_val: "-NULL"
    sorts: [traffic.choosable_measure desc]
    limit: 20
    column_limit: 50
    dynamic_fields: [{table_calculation: showhide, label: Show/Hide, expression: "${traffic.rank_limit}>=coalesce(${row_num},0)",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: row_num, label: row_num, expression: 'index(row(),row())',
        value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: rank, label: rank,
        expression: "rank( ${traffic.choosable_measure}\n   \
          \ , ${traffic.choosable_measure}\n    )", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: supermeasure, _type_hint: number}]
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
      traffic.choosable_measure_rate: scatter
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
    hidden_fields: [traffic.rank_limit, row_num, showhide, rank]
    hidden_points_if_no: [showhide]
    listen:
      date: traffic.custom_period
      top_n: traffic.top_n
      choose_measure: traffic.choose_measure
      choose_measure_2: traffic.choose_measure_rate
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion_lite
    field: traffic.custom_period
  - name: top_n
    default_value: '8'
    title: "top_n_item"
    explore: conversion_lite
    field: traffic.top_n
  - name: choose_measure
    title: "choose_measure"
    default_value: convertedSess
    ui_config:
      options:
      - sessions
      - productViewsSess
      - cartViewsSess
      - checkOutsSess
      - convertedSess
    explore: conversion_lite
    field: traffic.choose_measure
  - name: choose_measure_2
    title: "choose_measure_rate"
    default_value: convertedSessionsRate
    ui_config:
      options:
      - productViewRate
      - cartAddRate
      - checkOutsRate
      - checkoutComplRate
      - convertedSessionsRate
    explore: conversion_lite
    field: traffic.choose_measure_rate
