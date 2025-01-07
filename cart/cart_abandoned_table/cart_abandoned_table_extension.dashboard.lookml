- dashboard: cart_abandoned_table_extension
  # extension: required
  extends: [filter_date, filter_select_columns]
  preferred_viewer: dashboards-next
  title: "abandoned_carts"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "cart_abandoned_table"
    title_hidden: true
    model: analytics
    explore: cart_main
    type: looker_grid
    fields: [ cart_main.comparison_timeframe_table
             ,cart_main.recovered_date_table
             ,cart_main.completed_date_table
             ,cart_main.cart_status_table
             ,cart_main.cart_currency_table
             ,cart_main.customer_name_table
             ,cart_main.customer_email_table
             ,cart_main.customer_phone_table
             ,cart_main.is_abandoned_emailed_table
             ,cart_main.is_recovered_table
             ,cart_main.customer_type_table
             ,cart_main.shipping_method_table
             ,cart_main.coupon_name_table
             ,cart_main.line_item_picture_table
             ,cart_main.line_item_name_table
             #,cart_main.line_item_options_table
             ,cart_main.line_item_sku_table
             ,cart_main.billing_country_table
             ,cart_main.billing_state_table
             ,cart_main.billing_city_table
             ,cart_main.billing_zip_code_table
             ,cart_main.shipping_country_table
             ,cart_main.shipping_state_table
             ,cart_main.shipping_city_table
             ,cart_main.shipping_zip_code_table
             ,cart_main.pickup_country_table
             ,cart_main.pickup_state_table
             ,cart_main.pickup_city_table
             ,cart_main.pickup_zip_code_table
             ,cart_main.cart_count_table
             ,cart_main.cart_quantity_table
             ,cart_main.cart_net_table
             ,cart_main.line_item_quantity_table
             ,cart_main.line_item_price_table
             ,cart_main.cart_amount_table
             ,cart_main.abandoned_count_table
             ,cart_main.abandoned_amount_table
             ,cart_main.recoverable_count_table
             ,cart_main.recoverable_amount_table
             ,cart_main.recovered_count_table
             ,cart_main.recovered_amount_table
             ,cart_main.automations_count_table
             ,cart_main.completed_count_table
             ,cart_main.abandoned_rate_table
             ,cart_main.recoverable_rate_table
             ,cart_main.recovery_rate_table
             ,cart_main.organic_recovery_rate_table
             ,cart_main.completion_rate_table
             ]
    filters:
      cart_main.comparison_period: selectedPeriod
      cart_main.abandoned_cart_id: '-NULL'
      cart_main.is_known_email_num: 1
      cart_main.is_abandoned_all_num: 1
    sorts: [cart_main.comparison_timeframe_table desc]
    limit: 1500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$"]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      cart_main.comparison_timeframe_table: 110
      cart_main.line_item_picture_table: 100
    series_cell_visualizations:
      cart_main.cart_amount_table:
        is_active: false
    series_text_format:
      cart_main.comparison_timeframe_table:
        fg_color: "#162D3D"
      cart_main.recovered_date_table:
        fg_color: "#162D3D"
      cart_main.completed_date_table:
        fg_color: "#162D3D"
      cart_main.cart_status_table:
        fg_color: "#162D3D"
      cart_main.cart_currency_table:
        fg_color: "#162D3D"
      cart_main.customer_name_table:
        fg_color: "#162D3D"
      cart_main.customer_email_table:
        fg_color: "#162D3D"
      cart_main.customer_phone_table:
        fg_color: "#162D3D"
      cart_main.is_abandoned_emailed_table:
        fg_color: "#162D3D"
      cart_main.is_recovered_table:
        fg_color: "#162D3D"
      cart_main.customer_type_table:
        fg_color: "#162D3D"
      cart_main.shipping_method_table:
        fg_color: "#162D3D"
      cart_main.coupon_name_table:
        fg_color: "#162D3D"
      cart_main.line_item_picture_table:
        fg_color: "#162D3D"
      cart_main.line_item_name_table:
        fg_color: "#162D3D"
      # cart_main.line_item_options_table:
      #   fg_color: "#162D3D"
      cart_main.line_item_sku_table:
        fg_color: "#162D3D"
      cart_main.billing_country_table:
        fg_color: "#162D3D"
      cart_main.billing_state_table:
        fg_color: "#162D3D"
      cart_main.billing_city_table:
        fg_color: "#162D3D"
      cart_main.billing_zip_code_table:
        fg_color: "#162D3D"
      cart_main.shipping_country_table:
        fg_color: "#162D3D"
      cart_main.shipping_state_table:
        fg_color: "#162D3D"
      cart_main.shipping_city_table:
        fg_color: "#162D3D"
      cart_main.shipping_zip_code_table:
        fg_color: "#162D3D"
      cart_main.pickup_country_table:
        fg_color: "#162D3D"
      cart_main.pickup_state_table:
        fg_color: "#162D3D"
      cart_main.pickup_city_table:
        fg_color: "#162D3D"
      cart_main.pickup_zip_code_table:
        fg_color: "#162D3D"
      cart_main.cart_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.cart_quantity_table:
        fg_color: "#162D3D"
        align: right
      cart_main.cart_net_table:
        fg_color: "#162D3D"
        align: right
      cart_main.line_item_quantity_table:
        fg_color: "#162D3D"
        align: right
      cart_main.line_item_price_table:
        fg_color: "#162D3D"
        align: right
      cart_main.cart_amount_table:
        fg_color: "#162D3D"
        align: right
      cart_main.abandoned_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.abandoned_amount_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recoverable_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recoverable_amount_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recovered_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recovered_amount_table:
        fg_color: "#162D3D"
        align: right
      cart_main.automations_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.completed_count_table:
        fg_color: "#162D3D"
        align: right
      cart_main.abandoned_rate_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recoverable_rate_table:
        fg_color: "#162D3D"
        align: right
      cart_main.recovery_rate_table:
        fg_color: "#162D3D"
        align: right
      cart_main.organic_recovery_rate_table:
        fg_color: "#162D3D"
        align: right
      cart_main.completion_rate_table:
        fg_color: "#162D3D"
        align: right
    header_font_color: "#162D3D"
    header_background_color: "#DAEFFE"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3899ec",
        font_color: !!null '', color_application: {collection_id: wix_04_2022, palette_id: wix_04_2022-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [
                    cart_main.recovered_date_table
             ,cart_main.completed_date_table
             ,cart_main.cart_status_table
             ,cart_main.cart_currency_table
             ,cart_main.customer_type_table
             ,cart_main.shipping_method_table
             ,cart_main.coupon_name_table
             ,cart_main.line_item_picture_table
             ,cart_main.line_item_name_table

             ,cart_main.line_item_sku_table
             ,cart_main.billing_country_table
             ,cart_main.billing_state_table
             ,cart_main.billing_city_table
             ,cart_main.billing_zip_code_table
             ,cart_main.shipping_country_table
             ,cart_main.shipping_state_table
             ,cart_main.shipping_city_table
             ,cart_main.shipping_zip_code_table
             ,cart_main.pickup_country_table
             ,cart_main.pickup_state_table
             ,cart_main.pickup_city_table
             ,cart_main.pickup_zip_code_table
             ,cart_main.cart_count_table
             ,cart_main.cart_net_table
             ,cart_main.line_item_quantity_table
             ,cart_main.line_item_price_table
             ,cart_main.abandoned_count_table
             ,cart_main.abandoned_amount_table
             ,cart_main.recoverable_count_table
             ,cart_main.recoverable_amount_table
             ,cart_main.recovered_count_table
             ,cart_main.recovered_amount_table
             ,cart_main.automations_count_table
             ,cart_main.completed_count_table
             ,cart_main.abandoned_rate_table
             ,cart_main.recoverable_rate_table
             ,cart_main.recovery_rate_table
             ,cart_main.organic_recovery_rate_table
             ,cart_main.completion_rate_table
                  ]
    y_axes: []
    hidden_points_if_no: [showhide]
    listen:
      date: cart_main.custom_period
      columns_to_show: cart_main.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: cart_main
    field: cart_main.custom_period
  - name: columns_to_show
    default_value: 01.{{ _localization['comparison_created_period_by_granularity'] }},06.{{ _localization['customer_name'] }},07.{{ _localization['customer_email'] }},08.{{ _localization['customer_phone'] }},09.{{ _localization['is_abandoned_emailed'] }},10.{{ _localization['is_recovered'] }},30.{{ _localization['cart_quantity'] }},34.{{ _localization['cart_amount'] }}
    explore: cart_columns
    field: cart_columns.translation
