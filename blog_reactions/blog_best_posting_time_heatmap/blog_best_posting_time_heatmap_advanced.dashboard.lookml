- dashboard: blog_best_posting_time_heatmap_advanced
  extends:  [blog_best_posting_time_heatmap_extension, blog_filters_more]
  elements:
  - name: "blog_best_posting_time_heat_map"
    listen:
      post_title: blog_posts.post_title
      url_path: blog_posts.url_path
      last_published_date: blog_posts.last_published_date
      first_published_date: blog_posts.first_published_date
      is_featured: blog_posts.is_featured
      is_pinned: blog_posts.is_pinned
      exclude_bots: blog_main.exclude_bots
