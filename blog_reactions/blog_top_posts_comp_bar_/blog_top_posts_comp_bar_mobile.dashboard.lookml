- dashboard: blog_top_posts_comp_bar_mobile
  extends:  [blog_top_posts_comp_bar_extension]
  elements:
  - name: "blog_top_posts_comp_bar"
    size_to_fit: false
  filters:
  - name: comparison_period
    ui_config:
      display: overflow
  - name: top_n
    ui_config:
      display: overflow
  - name: choose_measure
    ui_config:
      display: overflow
