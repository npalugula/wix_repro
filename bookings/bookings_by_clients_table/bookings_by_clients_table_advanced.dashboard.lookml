- dashboard: bookings_by_clients_table_advanced
  extends: [bookings_by_clients_table_extension,bookings_filters_more]
  elements:
  - name: "bookings_by_clients_table"
    listen:
      client_name: bookings.client_name
      client_email: bookings.client_email
      client_new_returning: bookings.client_new_returning
      booking_status: bookings.status
      service_title: bookings.service_title_val
      # booking_first_start_time: bookings.booking_first_start_time
      booking_session_staff_name: bookings_resource.staff_name
      booking_service_details: bookings.service_details
      payment_paid_by: bookings.payment_paid_by
      plan_name: bookings.plan_name
      booking_payment_state: bookings.payment_state
      booking_platform: bookings.platform
      booked_by: bookings.booked_by
      service_type: bookings.service_type
      service_category: bookings_services.service_category
      deleted_service: bookings_services.is_deleted_service
      is_cancelled_session: bookings_sessions.is_cancelled_session
