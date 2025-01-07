- dashboard: booking_sessions_filters_more
  extension: required
  filters:
# Client Name
# Client Email
# New or Returning Client
# Booking Status
# Service Name
# Staff Name
# Service Details
# Day of Week
# Time
# Payment Method
# Payment Status
# plan_name
# Booking Method
# Booked by
# Service Type
# Service Category
# Deleted Service
# Service Image
# Cancelled Session
  - name: client_name
    title: "client_name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.client_name
  - name: client_email
    title: "client_email"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.client_email
  - name: client_new_returning
    title: "client_new_returning"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.client_new_returning
  - name: booking_status
    title: "booking_status"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.status
  - name: service_title
    title: "service_title"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    # listens_to_filters: [booking_service_details,booking_sessions_start_time,booking_sessions_start_week]
    listens_to_filters: [booking_service_details,booking_sessions_start_week]
    field: bookings_sessions.service_title_val
  - name: booking_session_staff_name
    title: "booking_session_staff_name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    # listens_to_filters: [service_title,booking_service_details,booking_sessions_start_time,booking_sessions_start_week]
    listens_to_filters: [service_title,booking_service_details,booking_sessions_start_week]
    field: bookings_resource.staff_name
  - name: booking_service_details
    title: "booking_service_details"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings_sessions.service_details
  # - name: booking_sessions_start_time
  #   title: "booking_sessions_start_time"
  #   type: field_filter
  #   default_value: ''
  #   allow_multiple_values: true
  #   required: false
  #   ui_config:
  #     type: tag_list
  #     display: overflow
  #   model: analytics
  #   explore: bookings_sessions
  #   field: bookings_sessions.start_time
  - name: booking_sessions_start_week
    title: "booking_sessions_start_week"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings_sessions.start_week
  - name: payment_paid_by
    title: "payment_paid_by"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.payment_paid_by
  - name: booking_payment_state
    title: "booking_payment_state"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.payment_state
  - name: plan_name
    title: "plan_name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.plan_name
  - name: booking_platform
    title: "booking_platform"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.platform
  - name: booked_by
    title: "booked_by"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings.booked_by
  - name: service_type
    title: "service_type"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings_sessions.service_type
  - name: service_category
    title: "service_category"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    # listens_to_filters: [service_title,booking_service_details,booking_sessions_start_time,booking_sessions_start_week]
    listens_to_filters: [service_title,booking_service_details,booking_sessions_start_week]
    field: bookings_services.service_category
  - name: deleted_service
    title: "deleted_service"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    # listens_to_filters: [service_title,booking_service_details,booking_sessions_start_time,booking_sessions_start_week]
    listens_to_filters: [service_title,booking_service_details,booking_sessions_start_week]
    field: bookings_services.is_deleted_service
  - name: is_cancelled_session
    title: "is_cancelled_session"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: overflow
    model: analytics
    explore: bookings_sessions
    field: bookings_sessions.is_cancelled_session
