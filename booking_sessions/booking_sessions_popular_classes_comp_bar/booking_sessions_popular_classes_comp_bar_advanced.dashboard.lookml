- dashboard: booking_sessions_popular_classes_comp_bar_advanced
  extends: [booking_sessions_popular_classes_comp_bar_extension, booking_sessions_filters_more]
  elements:
  - name: "booking_sessions_popular_classes_comp_bar"
    listen:
      client_name: bookings.client_name
      client_email: bookings.client_email
      client_new_returning: bookings.client_new_returning
      booking_status: bookings.status
      service_title: bookings_sessions.service_title_val
      booking_session_staff_name: bookings_resource.staff_name
      booking_service_details: bookings_sessions.service_details
      # booking_sessions_start_time: bookings_sessions.start_time
      booking_sessions_start_week: bookings_sessions.start_week
      payment_paid_by: bookings.payment_paid_by
      booking_payment_state: bookings.payment_state
      plan_name: bookings.plan_name
      booking_platform: bookings.platform
      booked_by: bookings.booked_by
      service_type: bookings_sessions.service_type
      service_category: bookings_services.service_category
      deleted_service: bookings_services.is_deleted_service
      is_cancelled_session: bookings_sessions.is_cancelled_session
  filters:
  - name: service_type
    default_value: '{{ _localization["service_type_group"] }}'
