- dashboard: blog_automations_performance_table_advanced
  extends:  [blog_automations_performance_table_extension, blog_automations_filters_more]
  elements:
  - name: "blog_automations_performance_table"
    listen:
      blog_auto_automation_name: blog_automations_main.automation_name
      blog_auto_subject_line: blog_automations_main.subject_line
      blog_auto_destination_url: blog_posts.url_path
      blog_auto_destination_name: blog_posts.post_title
