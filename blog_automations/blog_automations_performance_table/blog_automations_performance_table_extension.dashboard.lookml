- dashboard: blog_automations_performance_table_extension
  extension : required
  extends : [filter_date, filter_select_columns]
  title: "blog_automations_performance"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: "dashboard_title"
    name: "blog_automations_performance_table"
    title_hidden: true
    model: analytics
    explore: blog_automations
    type: looker_grid
    fields: [blog_automations_main.blog_auto_destination_image_tab,
             blog_automations_main.blog_auto_action_date_tab,
             blog_automations_main.blog_auto_automation_name_tab,
             blog_automations_main.blog_auto_subject_line_tab,
             blog_automations_main.blog_auto_destination_url_tab,
             blog_automations_main.blog_auto_destination_name_tab,
             blog_automations_main.blog_auto_delivered_cnt_tab,
             blog_automations_main.blog_auto_unique_opens_cnt_tab,
             blog_automations_main.blog_auto_open_rate_tab,
             blog_automations_main.blog_auto_unique_clicks_cnt_tab,
             blog_automations_main.blog_auto_click_rate_tab,
             blog_automations_main.blog_auto_bounced_cnt_tab,
             blog_automations_main.blog_auto_bounce_rate_tab,
             blog_automations_main.blog_auto_unsubscribed_cnt_tab,
             blog_automations_main.blog_auto_unsubscribe_rate_tab,
             blog_automations_main.blog_auto_spam_cnt_tab
    ]
    filters:
      blog_automations_main.comparison_period: selectedPeriod
    sorts: [blog_automations_main.blog_auto_action_date_tab desc]
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
      blog_automations_main.campaign_mails_count_tab:
        is_active: false
    series_column_widths:
       blog_automations_main.blog_auto_destination_name_tab: 400
    series_text_format:
      blog_automations_main.blog_auto_destination_image_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_action_date_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_automation_name_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_subject_line_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_destination_url_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_destination_name_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_delivered_cnt_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_unique_opens_cnt_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_open_rate_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_unique_clicks_cnt_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_click_rate_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_bounced_cnt_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_bounce_rate_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_unsubscribed_cnt_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_unsubscribe_rate_tab:
        fg_color: "#162D3D"
      blog_automations_main.blog_auto_spam_cnt_tab:
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
             blog_automations_main.blog_auto_destination_image_tab,
             #blog_automations_main.blog_auto_action_date_tab,
             blog_automations_main.blog_auto_automation_name_tab,
             blog_automations_main.blog_auto_subject_line_tab,
             blog_automations_main.blog_auto_destination_url_tab,
             #blog_automations_main.blog_auto_destination_name_tab,
             #blog_automations_main.blog_auto_delivered_cnt_tab,
             blog_automations_main.blog_auto_unique_opens_cnt_tab,
             #blog_automations_main.blog_auto_open_rate_tab,
             blog_automations_main.blog_auto_unique_clicks_cnt_tab,
             #blog_automations_main.blog_auto_click_rate_tab,
             blog_automations_main.blog_auto_bounced_cnt_tab,
             blog_automations_main.blog_auto_bounce_rate_tab,
             blog_automations_main.blog_auto_unsubscribed_cnt_tab,
             blog_automations_main.blog_auto_unsubscribe_rate_tab,
             blog_automations_main.blog_auto_spam_cnt_tab
             ]
    listen:
      date: blog_automations_main.custom_period
      columns_to_show: blog_automations_main.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: blog_automations
    field: blog_automations_main.custom_period
  - name: columns_to_show
    default_value: 02.{{_localization['blog_auto_action_date']}},06.{{_localization['blog_auto_destination_name']}},07.{{_localization['blog_auto_delivered_cnt']}},09.{{_localization['blog_auto_open_rate']}},11.{{_localization['blog_auto_click_rate']}}
    explore: blog_automations_columns
    field: blog_automations_columns.translation
