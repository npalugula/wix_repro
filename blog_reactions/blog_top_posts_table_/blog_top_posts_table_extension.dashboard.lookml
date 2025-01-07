- dashboard: blog_top_posts_table_extension
  extension : required
  extends : [filter_date, filter_select_columns]
  title: "blog_top_posts"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: "dashboard_title"
    name: "blog_top_posts_table"
    title_hidden: true
    model: analytics
    explore: blog
    type: looker_grid
    fields: [blog_main.cover_image_url_tab,
             blog_main.post_title_tab,
             blog_main.last_published_date_tab,
             blog_main.first_published_date_tab,
             blog_main.is_featured_tab,
             blog_main.is_pinned_tab,
             blog_main.action_date_tab,
             blog_main.post_view_count_tab,
             blog_main.post_sessions_count_tab,
             blog_main.visitors_distinct_count_tab,
             blog_main.post_reading_avg_time_tab,
             blog_main.post_scroll_rate_tab,
             blog_main.post_comments_count_tab,
             blog_main.post_likes_count_tab,
             blog_main.post_share_count_tab,
             blog_main.post_fb_share_count_tab,
             blog_main.post_l_in_share_count_tab,
             blog_main.post_link_share_count_tab,
             blog_main.engagement_count_tab
    ]
    filters:
      blog_main.comparison_period: selectedPeriod
      blog_main.post_title_is_not_null: "yes"
      blog_main.post_view_count: ">0"
    sorts: [blog_main.post_view_count_tab desc]
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
      blog_main.post_view_count_tab:
        is_active: false
    series_column_widths:
       blog_main.cover_image_url_tab: 70
       blog_main.post_title_tab: 400
    #   blog_main.last_published_date_tab: 135
    #   blog_main.first_published_date_tab: 130
    #   blog_main.is_featured_tab: 110
    #   blog_main.is_pinned_tab: 110
    #   blog_main.action_date_tab: 135
    #   blog_main.post_view_count_tab: 140
    #   blog_main.post_sessions_count_tab: 140
    #   blog_main.visitors_distinct_count_tab: 145
    #   blog_main.post_comments_count_tab: 120
    #   blog_main.post_likes_count_tab: 100
    #   blog_main.post_share_count_tab: 100
    #   blog_main.post_fb_share_count_tab: 160
    #   blog_main.post_l_in_share_count_tab: 150
    #   blog_main.post_link_share_count_tab: 140
    #   blog_main.engagement_count_ta: 100
    series_text_format:
      blog_main.post_title_tab:
        fg_color: "#162D3D"
      blog_main.cover_image_url_tab:
        fg_color: "#162D3D"
      blog_main.last_published_date_tab:
        fg_color: "#162D3D"
      blog_main.first_published_date_tab:
        fg_color: "#162D3D"
      blog_main.is_featured_tab:
        fg_color: "#162D3D"
      blog_main.is_pinned_tab:
        fg_color: "#162D3D"
      blog_main.action_date_tab:
        fg_color: "#162D3D"
      blog_main.post_view_count_tab:
        fg_color: "#162D3D"
      blog_main.post_sessions_count_tab:
        fg_color: "#162D3D"
      blog_main.visitors_distinct_count_tab:
        fg_color: "#162D3D"
      blog_main.post_reading_avg_time_tab:
        fg_color: "#162D3D"
      blog_main.post_scroll_rate_tab:
        fg_color: "#162D3D"
      blog_main.post_comments_count_tab:
        fg_color: "#162D3D"
      blog_main.post_likes_count_tab:
        fg_color: "#162D3D"
      blog_main.post_share_count_tab:
        fg_color: "#162D3D"
      blog_main.post_fb_share_count_tab:
        fg_color: "#162D3D"
      blog_main.post_l_in_share_count_tab:
        fg_color: "#162D3D"
      blog_main.post_link_share_count_tab:
        fg_color: "#162D3D"
      blog_main.engagement_count_tab:
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
            blog_main.last_published_date_tab,
            blog_main.is_featured_tab,
            blog_main.is_pinned_tab,
            blog_main.action_date_tab,
            blog_main.post_sessions_count_tab,
            blog_main.post_reading_avg_time_tab,
            blog_main.post_scroll_rate_tab,
            blog_main.post_share_count_tab,
            blog_main.post_fb_share_count_tab,
            blog_main.post_l_in_share_count_tab,
            blog_main.post_link_share_count_tab,
            blog_main.engagement_count_tab
             ]
    listen:
      date: blog_main.custom_period
      columns_to_show: blog_main.columns_to_show
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: blog
    field: blog_main.custom_period
  - name: columns_to_show
    default_value: 01.{{_localization['post_cover_image_url']}},02.{{_localization['post_title']}},04.{{_localization['post_first_published_date']}},08.{{_localization['post_view_count']}},10.{{_localization['post_visitors_count']}},13.{{_localization['comments_count']}},14.{{_localization['likes_count']}}
    explore: post_reactions_columns
    field: post_reactions_columns.translation
