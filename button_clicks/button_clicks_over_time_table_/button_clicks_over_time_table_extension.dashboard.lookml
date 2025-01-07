- dashboard: button_clicks_over_time_table_extension
  extension : required
  extends : [filter_date, filter_group_by_date, button_clicks_filters_element_type, button_clicks_filters_page_url_from,
             filter_select_columns]
  preferred_viewer: dashboards-next
  title: "clicks_over_time"
  layout: newspaper
  elements:
  - title: "dashboard_title"
    name: "button_clicks_over_time_table"
    title_hidden: true
    model: analytics
    explore: button_clicks
    type: looker_grid
    fields: [traffic_main.comparison_timeframe_tab, traffic_main.visitor_type_tab,
      traffic_main.referrer_source_tab, traffic_main.referrer_domain_tab,
      traffic_main.ref_url_tab, traffic_main.country_name_tab,
      traffic_main.region_tab, traffic_main.city_tab, traffic_main.postal_code_tab, traffic_main.device_type_tab,
      traffic_main.browser_family_tab, traffic_main.browser_version_tab, traffic_main.os_name_tab,
      traffic_main.element_details_tab, traffic_main.element_type_tab, traffic_main.element_title_tab,
      traffic_main.link_to_and_details_tab, traffic_main.element_linked_to_tab, traffic_main.element_linked_to_details_tab,
      traffic_main.page_url_from_tab, traffic_main.page_url_tab,
      traffic_main.view_count_tab, traffic_main.sessions_count_tab, traffic_main.visitors_count_tab,
      traffic_main.clicks_count_tab, traffic_main.unique_clicks_count_tab, traffic_main.clicks_ctr_tab]
    filters:
      traffic_main.comparison_period: selectedPeriod
      traffic_main.visitor_id: '-NULL'
    sorts: [traffic_main.comparison_timeframe_tab desc, traffic_main.unique_clicks_count_tab desc]
    limit: 1500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
      traffic_main.comparison_timeframe: 84
      traffic_main.element_details_tab: 250
      traffic_main.link_to_and_details_tab: 250
      traffic_main.page_url_from_tab: 200
    series_cell_visualizations:
      sessions_by_device.sessions_count_tab:
        is_active: false
    series_text_format:
      traffic_main.comparison_timeframe_tab:
        fg_color: "#162D3D"
      traffic_main.visitor_type_tab:
        fg_color: "#162D3D"
      traffic_main.referrer_source_tab:
        fg_color: "#162D3D"
      traffic_main.referrer_domain_tab:
        fg_color: "#162D3D"
      traffic_main.ref_url_tab:
        fg_color: "#162D3D"
      traffic_main.page_url_from_tab:
        fg_color: "#318DDD"
      traffic_main.page_url_tab:
        fg_color: "#318DDD"
      traffic_main.country_name_tab:
        fg_color: "#162D3D"
      traffic_main.region_tab:
        fg_color: "#162D3D"
      traffic_main.city_tab:
        fg_color: "#162D3D"
      traffic_main.postal_code_tab:
        fg_color: "#162D3D"
      traffic_main.device_type_tab:
        fg_color: "#162D3D"
      traffic_main.browser_family_tab:
        fg_color: "#162D3D"
      traffic_main.browser_version_tab:
        fg_color: "#162D3D"
      traffic_main.os_name_tab:
        fg_color: "#162D3D"
      traffic_main.element_details_tab:
        fg_color: "#162D3D"
      traffic_main.link_to_and_details_tab:
        fg_color: "#162D3D"
      traffic_main.element_type_tab:
        fg_color: "#162D3D"
      traffic_main.element_title_tab:
        fg_color: "#162D3D"
      traffic_main.element_linked_to_tab:
        fg_color: "#162D3D"
      traffic_main.element_linked_to_details_tab:
        fg_color: "#162D3D"
      traffic_main.view_count_tab:
        fg_color: "#162D3D"
        align: right
      traffic_main.sessions_count_tab:
        fg_color: "#162D3D"
        align: right
      traffic_main.visitors_count_tab:
        fg_color: "#162D3D"
        align: right
      traffic_main.clicks_count_tab:
        fg_color: "#162D3D"
        align: right
      traffic_main.unique_clicks_count_tab:
        fg_color: "#162D3D"
        align: right
      traffic_main.clicks_ctr_tab:
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
    hidden_fields: [traffic_main.visitor_type_tab,
      traffic_main.referrer_source_tab, traffic_main.referrer_domain_tab,
      traffic_main.ref_url_tab, traffic_main.country_name_tab,
      traffic_main.region_tab, traffic_main.city_tab, traffic_main.postal_code_tab, traffic_main.device_type_tab,
      traffic_main.browser_family_tab, traffic_main.browser_version_tab, traffic_main.os_name_tab,
      traffic_main.element_type_tab, traffic_main.element_title_tab,
      traffic_main.element_linked_to_tab, traffic_main.element_linked_to_details_tab,
      traffic_main.page_url_tab,
      traffic_main.view_count_tab, traffic_main.sessions_count_tab, traffic_main.clicks_count_tab]
    y_axes: []
    hidden_points_if_no: [showhide]
    listen:
      date: traffic_main.custom_period
      date_granularity: traffic_main.timeframe_granularity
      element_type: traffic_main.element_type
      page_url_from: traffic_main.page_url_from
      columns_to_show: traffic_main.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: button_clicks
    field: traffic_main.custom_period
  - name: date_granularity
    explore: button_clicks
    field: traffic_main.timeframe_granularity
  - name: columns_to_show
    default_value: 01.{{ _localization['comparison_created_period_by_granularity'] }},14.{{ _localization['element_details'] }},17.{{ _localization['link_to_and_details'] }},20.{{ _localization['button_clicks_page_url_from'] }},24.{{ _localization['button_clicks_visitors_count'] }},26.{{ _localization['unique_clicks_count'] }},27.{{ _localization['clicks_ctr'] }}
    explore: button_clicks_columns
    field: button_clicks_columns.translation
