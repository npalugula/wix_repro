- dashboard: blog_top_posts_comp_bar_extension
  # extension : required
  extends : [filter_date, filter_compare_to, filter_top_n_items, filter_choose_measure]
  title: "blog_top_posts"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: "dashboard_title"
    name: "blog_top_posts_comp_bar"
    title_hidden: true
    model: analytics
    explore: blog
    type: looker_bar
    fields: [blog_posts.post_title, blog_main.rank_limit,
      blog_main.choosable_measure, blog_main.is_current_period_name]
    pivots: [blog_main.is_current_period_name]
    filters:
      blog_main.choosable_measure: ">0"
      blog_main.post_title_is_not_null: "yes"
    sorts: [blog_main.is_current_period_name, blog_main.choosable_measure desc]
    limit: 5000
    dynamic_fields:
    - table_calculation: rank
      label: rank
      expression: |-
        rank( sum(pivot_row(${blog_main.choosable_measure}))
            , sum(pivot_row(${blog_main.choosable_measure}))
            )
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: row_num
      label: row_num
      expression: index(row(),row())
      value_format:
      value_format_name:
      is_disabled: false
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: showhide
      label: Show/Hide
      expression: "${blog_main.rank_limit}>=coalesce(${row_num},0)"
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: yesno
    query_timezone: user_timezone
    x_axis_gridlines: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: wix_04_2022
      palette_id: wix_04_2022-categorical-0
      options:
        steps: 5
    font_size: 12px
    series_colors: {}
    label_rotation: 360
    label_color: ["#2473B0"]
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    y_axes: [{showValues: false}]
    defaults_version: 1
    hidden_fields: [blog_main.rank_limit, showhide, row_num, rank]
    hidden_points_if_no: [showhide]
    listen:
      date: blog_main.custom_period
      comparison_period: blog_main.comparison_period
      top_n: blog_main.top_n
      choose_measure: blog_main.choose_measure
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: date
    explore: blog
    field: blog_main.custom_period
  - name: comparison_period
    explore: blog
    field: blog_main.comparison_period
  - name: top_n
    default_value: '8'
    explore: blog
    field: blog_main.top_n
  - name: choose_measure
    default_value: ViewsCount
    explore: blog
    field: blog_main.choose_measure
