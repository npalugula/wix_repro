- dashboard: conversion_orders_over_time_line_advanced
  extends:  [conversion_orders_over_time_line_extension, conversion_lite_filters_more]
  elements:
  - name: "conversion_orders_over_time_line"
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
