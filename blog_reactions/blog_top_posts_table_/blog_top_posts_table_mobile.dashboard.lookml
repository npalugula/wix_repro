- dashboard: blog_top_posts_table_mobile
  extends:  [blog_top_posts_table_extension]
  elements:
  - name: "blog_top_posts_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
