- dashboard: marketing_seo_conversion_by_referring_site_comp_bar_y_axes_extension
  # extension : required
  extends : [filter_date, filter_top_n_items, filter_conversion_choose_dimension, filter_choose_measure]
  preferred_viewer: dashboards-next
  title: "marketing_seo_conversion_by_referring_comp_y_axes"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "marketing_seo_conversion_by_referring_site_comp_bar_y_axes"
    title_hidden: true
    model: analytics
    explore: conversion
    type: looker_bar
    fields: [traffic.conversion_choosable_dimension, traffic.rank_limit, traffic.choosable_measure,
      traffic.conversion_sales_rate]
    filters:
      traffic.choosable_measure: ">0"
    sorts: [traffic.choosable_measure desc]
    limit: 5000
    dynamic_fields:
    - table_calculation: rank
      label: rank
      expression: |-
        rank( ${traffic.choosable_measure}
            , ${traffic.choosable_measure}
            )
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: row_num
      label: row_num
      expression: index(row(),row())
      value_format:
      value_format_name:
      is_disabled: false
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: showhide
      label: Show/Hide
      expression: "${traffic.rank_limit}>=coalesce(${row_num},0)"
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: yesno
    query_timezone: user_timezone
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: traffic.choosable_measure,
            id: traffic.choosable_measure, name: choosable_measure}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: right, series: [{axisId: traffic.conversion_sales_rate,
            id: traffic.conversion_sales_rate, name: conversion_sales_rate}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    font_size: 12px
    series_types:
      traffic.conversion_sales_rate: scatter
    series_colors:
      traffic.conversion_sales_rate: "#101F69"
    label_color: ["#2473B0", "#101F69"]
    #label_rotation: 360
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    defaults_version: 1
    hidden_fields: [traffic.rank_limit, row_num, showhide, rank]
    hidden_points_if_no: [showhide]
    listen:
      date: traffic.custom_period
      top_n: traffic.top_n
      choose_measure: traffic.choose_measure
      conversion_choose_dimension: traffic.conversion_choose_dimension
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion
    field: traffic.custom_period
  - name: top_n
    title: "top_n_sites"
    default_value: '8'
    explore: conversion
    field: traffic.top_n
  - name: conversion_choose_dimension
    title: "conversion_choose_dimension"
    default_value: refDomain
    ui_config:
      options:
      - referrerSource
      - refDomain
      - refSourceAndDomain
      - utmSource
      - utmMedium
      - utmCompain
    explore: conversion
    field: traffic.conversion_choose_dimension
  - name: choose_measure
    title: "choose_measure"
    default_value: sessions
    ui_config:
      options:
      - sessions
      - orders
      - averageOrderValue
      - totalSales
      - visitors
      - customersCount
    explore: conversion
    field: traffic.choose_measure
