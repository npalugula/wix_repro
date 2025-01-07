- dashboard: bookings_over_time_split_bar_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_choose_measure, filter_split_by]
  preferred_viewer: dashboards-next
  title: "bookings_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "bookings_over_time_split_bar"
    title_hidden: true
    model: analytics
    explore: bookings
    type: looker_column
    fields: [bookings.comparison_timeframe, bookings.choosable_measure]
    pivots: [bookings.choosable_split_by]
    filters:
      #bookings.choosable_measure: ">0"
    sorts: [bookings.comparison_timeframe desc, bookings.is_current_period_name]
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
    column_group_spacing_ratio: 0.2
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
    y_axes: [{label: '', orientation: left, series: [{axisId: bookings.choosable_measure,
            id: Current period - bookings.choosable_measure, name: Current period},
          {axisId: bookings.choosable_measure, id: Previous Period - bookings.choosable_measure,
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
      date: bookings.custom_period
      date_granularity: bookings.timeframe_granularity
      choose_measure: bookings.choose_measure
      split_by: bookings.split_by
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date

    explore: bookings
    field: bookings.custom_period
  - name: date_granularity
    explore: bookings
    field: bookings.timeframe_granularity
  - name: choose_measure
    default_value: confirmedBookings
    ui_config:
      options:
      - confirmedBookings
      - totalParticipants
      - canceledBookings
      - amountPaid
      - amountPending
      - totalBookingsCount
    explore: bookings
    field: bookings.choose_measure
  - name: split_by
    default_value: clientNewReturning
    ui_config:
      options:
      - clientNewReturning
      - bookingStatus
      - serviceTitle
      - sessionStaffName
      - paymentPaidBy
      - planName
      - paymentStatus
      - platform
      - bookedBy
      - serviceType
      - locationType
      - locationName
    explore: bookings
    field: bookings.split_by
