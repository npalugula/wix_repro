- dashboard: cart_funnel_bar_advanced
  extends: [cart_funnel_bar_extension, cart_filters_00_full]
  elements:
  - name: "cart_funnel_bar"
    listen:
      recovered_date: abandoned_cart.recovered_date
      completed_date: cart_main.completed_date
      cart_status: cart_main.cart_status
      cart_currency: cart_main.cart_currency
      customer_name: cart_main.customer_name
      customer_email: cart_main.customer_email
      is_abandoned_emailed: cart_main.is_abandoned_emailed
      is_recovered: cart_main.is_recovered
      customer_type: cart_main.customer_type
      shipping_method: cart_main.shipping_method
      coupon_name: cart_main.coupon_name
      line_item_name: cart_item.line_item_name
      #line_item_options: cart_item.line_item_options
      line_item_sku: cart_item.line_item_sku
      billing_country: cart_main.billing_country
      billing_state: cart_main.billing_state
      billing_city: cart_main.billing_city
      billing_zip_code: cart_main.billing_zip_code
      shipping_country: cart_main.shipping_country
      shipping_state: cart_main.shipping_state
      shipping_city: cart_main.shipping_city
      shipping_zip_code: cart_main.shipping_zip_code
      pickup_country: cart_main.pickup_country
      pickup_state: cart_main.pickup_state
      pickup_city: cart_main.pickup_city
      pickup_zip_code: cart_main.pickup_zip_code
