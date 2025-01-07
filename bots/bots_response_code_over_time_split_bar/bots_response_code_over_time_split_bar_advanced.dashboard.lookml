- dashboard: bots_response_code_over_time_split_bar_advanced
  extends: [bots_response_code_over_time_split_bar_extension, bots_filters_00_full]
  elements:
  - name: "bots_response_code_over_time_split_bar"
    listen:
      bot_type: bots_main.bot_type
      page_path: bots_main.page_path
      response_code_family: bots_main.response_code_family
      response_code: bots_main.response_code
