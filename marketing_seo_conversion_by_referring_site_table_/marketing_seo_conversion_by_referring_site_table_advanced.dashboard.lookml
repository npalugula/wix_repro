- dashboard: marketing_seo_conversion_by_referring_site_table_advanced
  extends : [marketing_seo_conversion_by_referring_site_table_extension, conversion_filters_more]
  elements:
  - name: "marketing_seo_conversion_by_referring_site_table"
    listen:
      session_user_aq: traffic.session_user_aquisition
      referrer_source: traffic.referrer_source
      ref_domain: traffic.referrer_domain
      ref_url: traffic.ref_url
      utm_source: traffic.campaign_source
      utm_medium: traffic.medium
      utm_campaign: traffic.campaign
      utm_content: traffic.content
      utm_term: traffic.term
      multichannelcampaign: traffic.multichannelcampaign
      customer_name: contacts.full_name
      source_app: transactions_sales.source_app
      payment_status: transactions_sales.payment_status
      page_url_from: traffic.page_url_from
      page_url: traffic.page_url
      country_name: traffic.country_name
      region: traffic.region
      city: traffic.city
      postal_code: traffic.postal_code
      device_type: traffic.device_type
      browser_family: traffic.browser_family
      browser_version: traffic.browser_version
      os_name: traffic.os_name
      visitor_type: traffic.visitor_type_orig
  filters:
  - name: visitor_type
    title: "visitor_type"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: analytics
    explore: conversion
    field: traffic.visitor_type_orig
