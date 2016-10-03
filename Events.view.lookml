- view: events
  
  sql_table_name: ( SELECT * FROM {% table_date_range date_filter amedia-analytics-eu:webtraffic.events_ %})
  fields:
  
  - filter: date_filter #This date filter is used in the table_date_range tab and as an explore filter.
    type: date

  - dimension: a_acpid
    type: string
    sql: ${TABLE}.a_acpid

  - dimension: a_byline
    type: string
    sql: ${TABLE}.a_byline

  - dimension: a_contentid
    type: string
    sql: ${TABLE}.a_contentid

  - dimension: a_contentidsource
    type: string
    sql: ${TABLE}.a_contentidsource

  - dimension: a_contenttype
    type: string
    sql: ${TABLE}.a_contenttype

  - dimension: a_datepublish
    type: string
    sql: ${TABLE}.a_datepublish

  - dimension: a_dateupdate
    type: string
    sql: ${TABLE}.a_dateupdate

  - dimension: a_edition
    type: string
    sql: ${TABLE}.a_edition

  - dimension: a_error
    type: string
    sql: ${TABLE}.a_error

  - dimension: a_gallery_currentcard
    type: string
    sql: ${TABLE}.a_gallery_currentcard

  - dimension: a_gallery_totalcards
    type: string
    sql: ${TABLE}.a_gallery_totalcards

  - dimension: a_livenews
    type: string
    sql: ${TABLE}.a_livenews

  - dimension: a_networksite
    type: string
    sql: ${TABLE}.a_networksite

  - dimension: a_order_campaign
    type: string
    sql: ${TABLE}.a_order_campaign

  - dimension: a_order_error
    type: string
    sql: ${TABLE}.a_order_error

  - dimension: a_order_paymentoption
    type: string
    sql: ${TABLE}.a_order_paymentoption

  - dimension: a_order_period
    type: string
    sql: ${TABLE}.a_order_period

  - dimension: a_order_price
    type: string
    sql: ${TABLE}.a_order_price

  - dimension: a_order_priceunit
    type: string
    sql: ${TABLE}.a_order_priceunit

  - dimension: a_order_product
    type: string
    sql: ${TABLE}.a_order_product

  - dimension: a_order_step
    type: string
    sql: ${TABLE}.a_order_step

  - dimension: a_originpub
    type: string
    sql: ${TABLE}.a_originpub

  - dimension: a_platform_version
    type: string
    sql: ${TABLE}.a_platform_version

  - dimension: a_relationcount
    type: string
    sql: ${TABLE}.a_relationcount

  - dimension: a_relationcount_embed
    type: string
    sql: ${TABLE}.a_relationcount_embed

  - dimension: a_relationcount_factbox
    type: string
    sql: ${TABLE}.a_relationcount_factbox

  - dimension: a_relationcount_feature
    type: string
    sql: ${TABLE}.a_relationcount_feature

  - dimension: a_relationcount_gallery
    type: string
    sql: ${TABLE}.a_relationcount_gallery

  - dimension: a_relationcount_media
    type: string
    sql: ${TABLE}.a_relationcount_media

  - dimension: a_relationcount_opinion
    type: string
    sql: ${TABLE}.a_relationcount_opinion

  - dimension: a_relationcount_picture
    type: string
    sql: ${TABLE}.a_relationcount_picture

  - dimension: a_relationcount_quote
    type: string
    sql: ${TABLE}.a_relationcount_quote

  - dimension: a_relationcount_story
    type: string
    sql: ${TABLE}.a_relationcount_story

  - dimension: a_relationcount_video
    type: string
    sql: ${TABLE}.a_relationcount_video

  - dimension: a_section
    type: string
    sql: ${TABLE}.a_section

  - dimension: a_sectiontype
    type: string
    sql: ${TABLE}.a_sectiontype

  - dimension: a_sub_aid_customer_id
    type: string
    sql: ${TABLE}.a_sub_aid_customer_id

  - dimension: a_sub_bundle
    type: string
    sql: ${TABLE}.a_sub_bundle

  - dimension: a_sub_class
    type: string
    sql: ${TABLE}.a_sub_class

  - dimension: a_sub_contentpresentation
    type: string
    sql: ${TABLE}.a_sub_contentpresentation

  - dimension: a_sub_id
    type: string
    sql: ${TABLE}.a_sub_id

  - dimension: a_sub_id_source
    type: string
    sql: ${TABLE}.a_sub_id_source

  - dimension: a_sub_key
    type: string
    sql: ${TABLE}.a_sub_key

  - dimension: a_sub_model
    type: string
    sql: ${TABLE}.a_sub_model

  - dimension: a_sub_status
    type: string
    sql: ${TABLE}.a_sub_status

  - dimension: a_sub_type
    type: string
    sql: ${TABLE}.a_sub_type

  - dimension: a_tag
    type: string
    sql: ${TABLE}.a_tag

  - dimension: a_timepublish
    type: string
    sql: ${TABLE}.a_timepublish

  - dimension: a_timeupdate
    type: string
    sql: ${TABLE}.a_timeupdate

  - dimension: a_title
    type: string
    sql: ${TABLE}.a_title

  - dimension: a_user_age
    type: string
    sql: ${TABLE}.a_user_age

  - dimension: a_user_aid_deck
    type: string
    sql: ${TABLE}.a_user_aid_deck

  - dimension: a_user_gender
    type: string
    sql: ${TABLE}.a_user_gender

  - dimension: a_user_id_source
    type: string
    sql: ${TABLE}.a_user_id_source

  - dimension: a_user_key
    type: string
    sql: ${TABLE}.a_user_key

  - dimension: a_user_login_error
    type: string
    sql: ${TABLE}.a_user_login_error

  - dimension: a_user_login_requested_url
    type: string
    sql: ${TABLE}.a_user_login_requested_url

  - dimension: a_user_login_step
    type: string
    sql: ${TABLE}.a_user_login_step

  - dimension: a_user_staff
    type: string
    sql: ${TABLE}.a_user_staff

  - dimension: a_view
    type: string
    sql: ${TABLE}.a_view

  - dimension: a_virtual
    type: string
    sql: ${TABLE}.a_virtual

  - dimension: a_wordcount
    type: string
    sql: ${TABLE}.a_wordcount

  - dimension: browserid
    type: string
    sql: ${TABLE}.browserid

  - dimension_group: dataflow_insert_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dataflow_insert_timestamp

  - dimension: extradata
    type: string
    sql: ${TABLE}.extradata

  - dimension: headers_accept
    type: string
    sql: ${TABLE}.headers_accept

  - dimension: headers_accept_encoding
    type: string
    sql: ${TABLE}.headers_accept_encoding

  - dimension: headers_accept_language
    type: string
    sql: ${TABLE}.headers_accept_language

  - dimension: headers_connection
    type: string
    sql: ${TABLE}.headers_connection

  - dimension: headers_content_length
    type: string
    sql: ${TABLE}.headers_content_length

  - dimension: headers_content_type
    type: string
    sql: ${TABLE}.headers_content_type

  - dimension: headers_origin
    type: string
    sql: ${TABLE}.headers_origin

  - dimension: headers_referer
    type: string
    sql: ${TABLE}.headers_referer

  - dimension: headers_user_agent
    type: string
    sql: ${TABLE}.headers_user_agent

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: ns_category
    type: string
    sql: ${TABLE}.ns_category

  - dimension: ns_site
    type: string
    sql: ${TABLE}.ns_site

  - dimension: referrer
    type: string
    sql: ${TABLE}.referrer

  - dimension: remoteip
    type: string
    sql: ${TABLE}.remoteip

  - dimension_group: time
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.time

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - dimension: visitid
    type: string
    sql: ${TABLE}.visitid

  - dimension_group: window_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.window_timestamp

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [name]

  - measure: snittalder
    type: avg
    sql: ${TABLE}.a_user_age
