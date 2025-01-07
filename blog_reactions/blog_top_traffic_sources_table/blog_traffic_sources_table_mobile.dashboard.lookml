- dashboard: blog_traffic_sources_table_mobile
  extends:  [blog_traffic_sources_table_extension]
  elements:
  - name: "blog_traffic_sources_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
