- dashboard: cart_abandoned_products_bar_extension
  extension: required
  extends: [filter_date,filter_top_n_items,filter_choose_measure,filter_selected_rate]
  preferred_viewer: dashboards-next
  title: "most_abandoned_products"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "cart_abandoned_products_bar"
    title_hidden: true
    model: analytics
    explore: cart_main
    type: looker_bar
    fields: [cart_item.line_item_name,cart_main.choosable_measure, cart_main.rank_limit, cart_main.choosable_rate]
    #pivots: [cart_main.is_current_period_name]
    filters:
       cart_main.comparison_period: selectedPeriod
       #cart_main.is_abandoned_all_num: 1
       cart_main.choosable_measure: ">0"
    sorts: [ ranktotopn 0]
    limit: 500
    dynamic_fields: [{table_calculation: showhide, label: Show/Hide, expression: "${cart_main.rank_limit}>=coalesce(${row_num},0)",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: yesno}, {table_calculation: row_num, label: row_num, expression: 'index(row(),row())',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}, {table_calculation: rank, label: rank, expression: "rank(\
          \ sum(pivot_row(${cart_main.choosable_rate}))\n    , sum(pivot_row(${cart_main.choosable_rate}))\n\
          \    )", value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: supermeasure, _type_hint: number}]
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
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    y_axes: [{label: '',
              orientation: left,
              series: [{axisId: cart_main.choosable_measure, id: cart_main.choosable_measure, name: "choosable_measure"}],
              showLabels: false,
              showValues: false,
              unpinAxis: false,
              tickDensity: default,
              tickDensityCustom: 5,
              type: linear
              },
              {label: !!null '',
               orientation: right,
               series: [{axisId: cart_main.choosable_rate, id: cart_main.choosable_rate, name: "choosable_rate"}],
               showLabels: false,
               showValues: false,
               #valueFormat: 0.00\%,
               unpinAxis: false,
               tickDensity: default,
               tickDensityCustom: 5,
               type: linear}
            ]
    font_size: 12px
    series_types:
      cart_main.choosable_rate: scatter
    label_color: ["#2473B0"]
    label_rotation: 360
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    show_dropoff: false
    defaults_version: 1
    hidden_fields: [cart_main.rank_limit,howhide, total, row_num, rank,cart_main.is_abandoned_num]
    hidden_points_if_no: [showhide]
    listen:
      date: cart_main.custom_period
      top_n: cart_main.top_n
      choose_measure: cart_main.choose_measure
      selected_rate: cart_main.choose_rate
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: cart_main
    field: cart_main.custom_period
  - name: top_n
    default_value: '8'
    explore: cart_main
    field: cart_main.top_n
  - name: choose_measure
    default_value: abandonedCount
    ui_config:
      options:
      - abandonedCount
      - completedCount
    explore: cart_main
    field: cart_main.choose_measure
  - name: selected_rate
    default_value: abandonedRate
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - abandonedRate
      - completionRate
    explore: cart_main
    field: cart_main.choose_rate
