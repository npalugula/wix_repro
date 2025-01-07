- dashboard: button_clicks_over_time_line_advanced
  extends: [button_clicks_over_time_line_extension, button_clicks_filters_more, button_clicks_filters_page_url
          , traffic_filters_02_visitor_type, traffic_filters_04_referrer_source, traffic_filters_05_ref_domain
          , traffic_filters_06_ref
          , traffic_filters_14_country, traffic_filters_15_region, traffic_filters_16_city, traffic_filters_27_postal_code
          , traffic_filters_17_device_type, traffic_filters_18_browser_family, traffic_filters_19_browser_version
          , traffic_filters_20_os_name]
  elements:
  - name: "button_clicks_over_time_line"
    listen:
      visitor_type: traffic_main.visitor_type
      referrer_source: traffic_main.referrer_source
      ref_domain: traffic_main.referrer_domain
      ref: traffic_main.ref_url
      page_url: traffic_main.page_url
      country: traffic_main.country_name
      region: traffic_main.region
      city: traffic_main.city
      postal_code: traffic_main.postal_code
      device_type: traffic_main.device_type
      browser_family: traffic_main.browser_family
      browser_version: traffic_main.browser_version
      os_name: traffic_main.os_name
      element_title: traffic_main.element_title
      element_linked_to: traffic_main.element_linked_to
      element_linked_to_details: traffic_main.element_linked_to_details
