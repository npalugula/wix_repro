- dashboard: blog_posts_over_time_comp_line_mobile
  extends:  [blog_posts_over_time_comp_line_extension]
  elements:
  - name: "blog_posts_over_time_comp_line"
    size_to_fit: false
  filters:
  - name: comparison_period
    ui_config:
      display: overflow
  - name: date_granularity
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
