- dashboard: marketing_seo_conversion_full_by_referring_site_table_mobile
  extends : [marketing_seo_conversion_full_by_referring_site_table_extension]
  elements:
  - name: "marketing_seo_conversion_full_by_referring_site_table"
    size_to_fit: false
  filters:
  - name: columns_to_show
    ui_config:
      display: overflow
  - name: session_user_aq
    ui_config:
      display: overflow
