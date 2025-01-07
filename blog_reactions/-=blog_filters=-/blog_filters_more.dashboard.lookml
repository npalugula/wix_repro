- dashboard: blog_filters_more
  extension: required
  filters:
  - name: post_title
    title: "post_title"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.post_title
  - name: url_path
    title: "post_url_path"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.url_path
  - name: last_published_date
    title: "post_last_published_date"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.last_published_date
  - name: first_published_date
    title: "post_first_published_date"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.first_published_date
  - name: is_featured
    title: "post_is_featured"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.is_featured
  - name: is_pinned
    title: "post_is_pinned"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: blog
    field: blog_posts.is_pinned
  - name: exclude_bots
    title: 'exclude_bots'
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: overflow
    model: analytics
    explore: blog
    field: blog_main.exclude_bots
