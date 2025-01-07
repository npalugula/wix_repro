- dashboard: conversion_store_rate_by_product_lite_table_extension
  # extension : required
  extends : [filter_date, filter_select_columns]
  preferred_viewer: dashboards-next
  title: "conversion_store_rate_by_product"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_store_rate_by_product_lite_table"
    title_hidden: true
    model: analytics
    explore: conversion_product_lite
    type: looker_grid
    fields: [ traffic_spes_measures.product_image_tab
            , traffic_spes_measures.product_name_tab
            , traffic_spes_measures.product_price_tab
            , traffic_spes_measures.product_on_sale_tab
            , traffic_spes_measures.product_images_count_tab
            , traffic_spes_measures.product_desc_length_tab
            , traffic_spes_measures.conversion_product_views_sessions_cnt_tab
            , traffic_spes_measures.conversion_cart_views_sessions_cnt_tab
            , traffic_spes_measures.conversion_store_product_orders_sessions_cnt_tab
            , traffic_spes_measures.product_conversion_rate_sessions_tab
            , traffic_spes_measures.item_quantity_tab
            , traffic_spes_measures.product_revenue_tab
            ]
    filters:
      traffic_spes_measures.comparison_period: selectedPeriod
      traffic_spes_measures.product_name_val: "-NULL"
    sorts: [traffic_spes_measures.product_revenue_tab desc]
    limit: 1500
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      traffic_spes_measures.product_image_tab: 100
      traffic_spes_measures.product_conversion_rate_sessions_tab: 170
      order_item.product_revenue: 170
    series_cell_visualizations:
      traffic_spes_measures.conversion_product_views_sessions_cnt:
        is_active: false
    series_text_format:
      traffic_spes_measures.product_image_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_name_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_price_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_desc_length_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_images_count_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_on_sale_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.conversion_product_views_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.conversion_cart_views_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.conversion_store_product_orders_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_conversion_rate_sessions_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.item_quantity_tab:
        fg_color: "#162D3D"
      traffic_spes_measures.product_revenue_tab:
        fg_color: "#162D3D"
    header_font_color: "#162D3D"
    header_background_color: "#C1E4FE"
    x_axis_gridlines: falses
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [
                    traffic_spes_measures.product_price_tab
                  , traffic_spes_measures.product_desc_length_tab
                  , traffic_spes_measures.product_images_count_tab
                  , traffic_spes_measures.product_on_sale_tab
      ]
    listen:
      date: traffic_spes_measures.custom_period
      columns_to_show: traffic_spes_measures.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion_product_lite
    field: traffic_spes_measures.custom_period
  - name: columns_to_show
    default_value: 01.{{_localization['product_image']}},02.{{_localization['line_item_name']}},07.{{_localization['conversion_product_views_sessions_cnt']}},08.{{_localization['conversion_cart_views_sessions_cnt']}},09.{{_localization['conversion_converted_sessions_cnt']}},10.{{_localization['product_conversion_sales_rate']}},11.{{_localization['quantity']}},12.{{_localization['product_price_total']}}
    explore: conversion_4_products_columns
    field: conversion_4_products_columns.translation
