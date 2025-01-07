- dashboard: conversion_store_funnel_bar_extension
  extension: required
  extends: [filter_date]
  preferred_viewer: dashboards-next
  title: "conversion_store_funnel_bar"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_store_funnel_bar"
    title_hidden: true
    model: analytics
    explore: conversion_lite
    type: looker_column
    fields: [traffic.dummy_three, traffic.sessions_count, traffic_spes_measures.product_views_sessions_cnt,
             traffic_spes_measures.cart_views_sessions_cnt, traffic_spes_measures.check_out_sessions_cnt,
             traffic_spes_measures.store_orders_sessions_cnt]
    fill_fields: [traffic.dummy_three]
    #pivots: []
    filters:
       traffic.comparison_period: selectedPeriod
    sorts: [order_by]
    dynamic_fields: [{table_calculation: value, label: "value_lbl", expression: "coalesce(\n\
                      \ if(${traffic.dummy_three}=\"sessions_count\", ${traffic.sessions_count},\
                      \ null),\n if(${traffic.dummy_three}=\"conversion_product_views_sessions_cnt\"\
                      , index(${traffic_spes_measures.product_views_sessions_cnt},match(\"sessions_count\"\
                      , ${traffic.dummy_three})),  null),\n if(${traffic.dummy_three}=\"conversion_cart_views_sessions_cnt\"\
                      , index(${traffic_spes_measures.cart_views_sessions_cnt}, match(\"sessions_count\"\
                      , ${traffic.dummy_three})), null),\n if(${traffic.dummy_three}=\"conversion_check_outs_sessions_cnt\"\
                      , index(${traffic_spes_measures.check_out_sessions_cnt}, match(\"sessions_count\"\
                      , ${traffic.dummy_three})), null),\n if(${traffic.dummy_three}=\"conversion_converted_sessions_cnt\"\
                      , index(${traffic_spes_measures.store_orders_sessions_cnt}, match(\"sessions_count\"\
                      , ${traffic.dummy_three})), null),\n null)", value_format: !!null '', value_format_name: decimal_0,
                      is_disabled: false, _kind_hint: measure, _type_hint: number}, {table_calculation: order_by,
                      label: order_by, expression: "if(${traffic.dummy_three}=\n  \"sessions_count\"\
                      ,1\n,if(${traffic.dummy_three}=\"conversion_product_views_sessions_cnt\"\
                      ,2\n,if(${traffic.dummy_three}=\"conversion_cart_views_sessions_cnt\",3\n\
                      ,if(${traffic.dummy_three}=\"conversion_check_outs_sessions_cnt\",4\n,if(${traffic.dummy_three}=\"\
                      conversion_converted_sessions_cnt\",5,null)))))\n", value_format: !!null '',
                      value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
    limit: 5000
    query_timezone: user_timezone
    x_axis_gridlines: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: value, id: value, name: Value}],
            showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
            tickDensityCustom: 5, type: linear}]
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    font_size: 12px
    series_types: {}
    label_color: ["#2473B0"]
    label_rotation: 360
    column_spacing_ratio: 0.4
    column_group_spacing_ratio: 0.4
    show_dropoff: true
    hidden_fields: [traffic.sessions_count, traffic_spes_measures.product_views_sessions_cnt,
                    traffic_spes_measures.cart_views_sessions_cnt, traffic_spes_measures.check_out_sessions_cnt,
                    traffic_spes_measures.store_orders_sessions_cnt, order_by]
    defaults_version: 1
    listen:
      date: traffic.custom_period
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion_lite
    field: traffic.custom_period
