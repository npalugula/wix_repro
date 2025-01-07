- dashboard: cart_funnel_over_time_combo_chart_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, filter_selected_rate]
  preferred_viewer: dashboards-next
  title: "carts_funnel_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "cart_funnel_over_time_combo_chart"
    title_hidden: true
    model: analytics
    explore: cart_main
    type: looker_line
    fields: [cart_main.choosable_measure, cart_main.choosable_rate, cart_main.comparison_timeframe]
    filters:
      cart_main.comparison_period: selectedPeriod
    sorts: [cart_main.comparison_timeframe desc]
    limit: 1500
    query_timezone: user_timezone
    x_axis_gridlines: true
    y_axis_gridlines: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label_color: ["#2473B0"]
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
    series_types:
      cart_main.choosable_measure: column
    series_colors: {}
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
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      date: cart_main.custom_period
      date_granularity: cart_main.timeframe_granularity
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
  - name: date_granularity
    explore: cart_main
    field: cart_main.timeframe_granularity
  - name: choose_measure
    default_value: recoveredCount
    ui_config:
      options:
      - abandonedCount
      - cartCount
      - recoverableCount
      - automationsCount
      - recoveredCount
    explore: cart_main
    field: cart_main.choose_measure
  - name: selected_rate
    default_value: recoveryRate
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - abandonedRate
      - recoverableRate
      - recoveryRate
      - emailRecoveryRate
      - completionRate
    explore: cart_main
    field: cart_main.choose_rate
