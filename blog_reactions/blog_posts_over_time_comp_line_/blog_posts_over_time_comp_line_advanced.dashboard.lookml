- dashboard: blog_posts_over_time_comp_line_advanced
  extends:  [blog_posts_over_time_comp_line_extension, blog_filters_more]
  elements:
  - name: "blog_posts_over_time_comp_line"
    listen:
      post_title: blog_posts.post_title
      url_path: blog_posts.url_path
      last_published_date: blog_posts.last_published_date
      first_published_date: blog_posts.first_published_date
      is_featured: blog_posts.is_featured
      is_pinned: blog_posts.is_pinned
      exclude_bots: blog_main.exclude_bots
