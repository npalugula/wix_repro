- dashboard: blog_best_posting_time_heatmap_mobile
  extends:  [blog_best_posting_time_heatmap_extension]
  elements:
  - name: "blog_best_posting_time_heat_map"
    size_to_fit: false
  filters:
  - name: choose_measure
    ui_config:
      display: overflow
