- dashboard: blog_best_posting_time_bar_chart_mobile
  extends:  [blog_best_posting_time_bar_chart_extension]
  elements:
  - title: "dashboard_title"
    name: "blog_best_posting_time_bar_chart"
    size_to_fit: false
  filters:
  - name: choose_measure
    ui_config:
      display: overflow
  - name: day_of_week
    ui_config:
      display: overflow
