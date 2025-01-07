- dashboard: conversion_store_funnel_over_time_table_extension
  extension : required
  extends : [filter_date, filter_group_by_date, filter_select_columns]
  preferred_viewer: dashboards-next
  title: "store_funnel_over_time_table"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "conversion_store_funnel_over_time_table"
    title_hidden: true
    model: analytics
    explore: conversion_lite
    type: looker_grid
    fields: [traffic.conversion_timeframe_tab
            ,traffic.referrer_source_tab
            ,traffic.referrer_domain_tab
            ,traffic.ref_url_tab
            ,traffic.utm_source_tab
            ,traffic.utm_medium_tab
            ,traffic.utm_campaign_tab
            ,traffic.utm_content_tab
            ,traffic.utm_term_tab
            ,traffic.multichannelcampaign_tab
            ,traffic.page_url_from_tab
            ,traffic.page_url_tab
            ,traffic.country_name_tab
            ,traffic.region_tab
            ,traffic.city_tab
            ,traffic.postal_code_tab
            ,traffic.device_type_tab
            ,traffic.browser_family_tab
            ,traffic.browser_version_tab
            ,traffic.os_name_tab
            ,traffic.visitor_type_tab
            ,traffic.sessions_count_tab
            ,traffic.view_count_tab
            ,traffic.site_avg_time_tab
            ,traffic.visitors_count_tab
            ,traffic.orders_tab
            ,traffic.conversion_sales_rate_tab
            ,traffic.conversion_product_views_sessions_cnt_tab
            ,traffic.conversion_cart_views_sessions_cnt_tab
            ,traffic.conversion_check_outs_sessions_cnt_tab
            ,traffic.conversion_converted_sessions_cnt_tab
            ,traffic.conversion_product_views_sessions_rate_tab
            ,traffic.conversion_add_cart_sessions_rate_tab
            ,traffic.conversion_check_outs_sessions_rate_tab
            ,traffic.conversion_checkout_completion_rate_tab
            ,traffic.conversion_converted_sessions_rate_tab
    ]
    filters:
      traffic.comparison_period: selectedPeriod
    sorts: [traffic.conversion_timeframe_tab desc]
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
    series_cell_visualizations:
      traffic.sessions_count_tab:
        is_active: false
    series_text_format:
      traffic.conversion_timeframe_tab:
        fg_color: "#162D3D"
      traffic.referrer_source_tab:
        fg_color: "#162D3D"
      traffic.referrer_domain_tab:
        fg_color: "#162D3D"
      traffic.ref_url_tab:
        fg_color: "#162D3D"
      traffic.utm_source_tab:
        fg_color: "#162D3D"
      traffic.utm_medium_tab:
        fg_color: "#162D3D"
      traffic.utm_campaign_tab:
        fg_color: "#162D3D"
      traffic.utm_content_tab:
        fg_color: "#162D3D"
      traffic.utm_term_tab:
        fg_color: "#162D3D"
      traffic.multichannelcampaign_tab:
        fg_color: "#162D3D"
      traffic.page_url_from_tab:
        fg_color: "#162D3D"
      traffic.page_url_tab:
        fg_color: "#162D3D"
      traffic.country_name_tab:
        fg_color: "#162D3D"
      traffic.region_tab:
        fg_color: "#162D3D"
      traffic.city_tab:
        fg_color: "#162D3D"
      traffic.postal_code_tab:
        fg_color: "#162D3D"
      traffic.device_type_tab:
        fg_color: "#162D3D"
      traffic.browser_family_tab:
        fg_color: "#162D3D"
      traffic.browser_version_tab:
        fg_color: "#162D3D"
      traffic.os_name_tab:
        fg_color: "#162D3D"
      traffic.visitor_type_tab:
        fg_color: "#162D3D"
      traffic.sessions_count_tab:
        fg_color: "#162D3D"
      traffic.view_count_tab:
        fg_color: "#162D3D"
      traffic.site_avg_time_tab:
        fg_color: "#162D3D"
      traffic.visitors_count_tab:
        fg_color: "#162D3D"
      traffic.orders_tab:
        fg_color: "#162D3D"
      traffic.conversion_sales_rate_tab:
        fg_color: "#162D3D"
      traffic.conversion_product_views_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic.conversion_cart_views_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic.conversion_check_outs_sessions_cnt_tab:
        fg_color: "#162D3D"
      traffic.conversion_converted_sessions_cnt:
        fg_color: "#162D3D"
      traffic.conversion_product_views_sessions_rate_tab:
        fg_color: "#162D3D"
      traffic.conversion_add_cart_sessions_rate_tab:
        fg_color: "#162D3D"
      traffic.conversion_check_outs_sessions_rate_tab:
        fg_color: "#162D3D"
      traffic.conversion_checkout_completion_rate_tab:
        fg_color: "#162D3D"
      traffic.conversion_converted_sessions_rate_tab:
        fg_color: "#162D3D"
    header_font_color: "#162D3D"
    header_background_color: "#C1E4FE"
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [
             traffic.referrer_source_tab
            ,traffic.referrer_domain_tab
            ,traffic.ref_url_tab
            ,traffic.utm_source_tab
            ,traffic.utm_medium_tab
            ,traffic.utm_campaign_tab
            ,traffic.utm_content_tab
            ,traffic.utm_term_tab
            ,traffic.multichannelcampaign_tab
            ,traffic.page_url_from_tab
            ,traffic.page_url_tab
            ,traffic.country_name_tab
            ,traffic.region_tab
            ,traffic.city_tab
            ,traffic.postal_code_tab
            ,traffic.device_type_tab
            ,traffic.browser_family_tab
            ,traffic.browser_version_tab
            ,traffic.os_name_tab
            ,traffic.visitor_type_tab
            ,traffic.view_count_tab
            ,traffic.site_avg_time_tab
            ,traffic.visitors_count_tab
            ,traffic.orders_tab
            ,traffic.conversion_sales_rate_tab
            ,traffic.conversion_product_views_sessions_rate_tab
            ,traffic.conversion_add_cart_sessions_rate_tab
            ,traffic.conversion_check_outs_sessions_rate_tab
            ,traffic.conversion_checkout_completion_rate_tab]
    listen:
      date: traffic.custom_period
      date_granularity: traffic.timeframe_granularity
      columns_to_show: traffic.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: conversion_lite
    field: traffic.custom_period
  - name: date_granularity
    explore: conversion_lite
    default_value: week
    field: traffic.timeframe_granularity
  - name: columns_to_show
    default_value: 01.{{_localization['conversion_timeframe']}},22.{{_localization['sessions_count']}},28.{{_localization['conversion_product_views_sessions_cnt']}},29.{{_localization['conversion_cart_views_sessions_cnt']}},30.{{_localization['conversion_check_outs_sessions_cnt']}},31.{{_localization['conversion_converted_sessions_cnt']}},36.{{ _localization['conversion_converted_sessions_rate'] }}
    explore: conversion_lite_columns
    field: conversion_lite_columns.translation
