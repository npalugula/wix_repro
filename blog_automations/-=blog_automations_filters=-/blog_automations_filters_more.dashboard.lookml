- dashboard: blog_automations_filters_more
  extension: required
  filters:
  - name: blog_auto_automation_name
    title: "blog_auto_automation_name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog_automations
    field: blog_automations_main.automation_name
  - name: blog_auto_subject_line
    title: "blog_auto_subject_line"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog_automations
    field: blog_automations_main.subject_line
  - name: blog_auto_destination_url
    title: "blog_auto_destination_url"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
    model: analytics
    explore: blog_automations
    field: blog_posts.url_path
  - name: blog_auto_destination_name
    title: "blog_auto_destination_name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
    model: analytics
    explore: blog_automations
    field: blog_posts.post_title
