- dashboard: blog_posts_over_time_table_mobile
  extends:  [blog_posts_over_time_table_extension]
  elements:
  - name: "blog_posts_over_time_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
