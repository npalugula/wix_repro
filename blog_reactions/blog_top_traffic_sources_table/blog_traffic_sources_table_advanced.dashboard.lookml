- dashboard: blog_traffic_sources_table_advanced
  extends:  [blog_traffic_sources_table_extension, blog_traffic_filters_more]
  elements:
  - name: "blog_traffic_sources_table"
    listen:
      post_title: blog_posts.post_title
      url_path: blog_posts.url_path
      last_published_date: blog_posts.last_published_date
      first_published_date: blog_posts.first_published_date
      is_featured: blog_posts.is_featured
      is_pinned: blog_posts.is_pinned
      referrer_source: blog_traffic_base.referrer_source
      ref_domain: blog_traffic_base.ref_domain
      exclude_bots: blog_main.exclude_bots
