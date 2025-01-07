- dashboard: cart_funnel_bar_extension
  extension: required
  extends: [filter_date, filter_choose_measure_type]
  preferred_viewer: dashboards-next
  title: "cart_funnel"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "cart_funnel_bar"
    title_hidden: true
    model: analytics
    explore: cart_main
    type: looker_column
    fields: [cart_main.step_dimension, cart_main.choosable_measure_cart, cart_main.choosable_measure_abandoned, cart_main.choosable_measure_recoverable, cart_main.choosable_measure_recovered]
    fill_fields: [cart_main.step_dimension]
    #pivots: []
    filters:
       cart_main.comparison_period: selectedPeriod
    #sorts: []
    sorts: [order_by]
    dynamic_fields: [{table_calculation: value, label: "value_lbl", expression: "coalesce(\n\
\ if(${cart_main.step_dimension}=\"choosable_measure_cart\", ${cart_main.choosable_measure_cart},\
\ null),\n if(${cart_main.step_dimension}=\"choosable_measure_abandoned\"\
, index(${cart_main.choosable_measure_abandoned},match(\"choosable_measure_cart\"\
, ${cart_main.step_dimension})),  null),\n if(${cart_main.step_dimension}=\"\
choosable_measure_recoverable\", index(${cart_main.choosable_measure_recoverable},\
\ match(\"choosable_measure_cart\", ${cart_main.step_dimension})), null),\n\
\ if(${cart_main.step_dimension}=\"choosable_measure_recovered\", index(${cart_main.choosable_measure_recovered},\
\ match(\"choosable_measure_cart\", ${cart_main.step_dimension})), null),\n\
\ ,\n null)", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
_type_hint: number}, {table_calculation: order_by, label: order_by, expression: "if(${cart_main.step_dimension}=\n\
\  \"choosable_measure_cart\",1\n,if(${cart_main.step_dimension}=\"choosable_measure_abandoned\"\
,2\n,if(${cart_main.step_dimension}=\"choosable_measure_recoverable\",3\n\
,if(${cart_main.step_dimension}=\"choosable_measure_recovered\",4, null))))\n",
value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
_type_hint: number}]
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
    hidden_fields: [cart_main.choosable_measure_cart, cart_main.choosable_measure_abandoned,
                    cart_main.choosable_measure_recoverable, cart_main.choosable_measure_recovered, order_by]
    defaults_version: 1
    listen:
      date: cart_main.custom_period
      choose_measure_type: cart_main.choose_measure_type
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: cart_main
    field: cart_main.custom_period
  - name: choose_measure_type
    ui_config:
      options:
      - cartCount
      - cartAmount
