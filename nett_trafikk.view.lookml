- view: Nettrafikk
  
  sql_table_name: ( SELECT * FROM {% table_date_range date_filter amedia-analytics-eu:webtraffic.events_ %})
  fields:
  
  - filter: date_filter #This date filter is used in the table_date_range tab and as an explore filter.
    type: date

# Generelt

  - dimension: page_name
    label: 'Side'
    type: string
    sql: ${TABLE}.name

  - dimension: a_edition
    label: 'Utgave'
    type: string
    sql: ${TABLE}.a_edition
    group_label: 'Generelt'

  - dimension: a_error
    label: 'Feil (a_error)'
    type: string
    sql: ${TABLE}.a_error
    group_label: 'Generelt'

  - dimension: a_networksite
    label: 'Nettverksnettsted'
    type: string
    sql: ${TABLE}.a_networksite
    group_label: 'Generelt'

  - dimension: a_platform_version
    label: 'Plattformversjon'
    type: string
    sql: ${TABLE}.a_platform_version
    group_label: 'Generelt'

# Artikkel-informasjon

  - dimension: a_acpid
    label: 'Artikkel-ID'
    type: string
    sql: ${TABLE}.a_acpid
    group_label: 'Artikkel-informasjon'

  - dimension: a_byline
    label: 'Byline'
    type: string
    sql: ${TABLE}.a_byline
    group_label: 'Artikkel-informasjon'

  - dimension: a_contentid
    label: 'Innholds-ID'
    type: string
    sql: ${TABLE}.a_contentid
    group_label: 'Artikkel-informasjon'

  - dimension: a_contentidsource
    label: 'Kildesystem'
    type: string
    sql: ${TABLE}.a_contentidsource
    group_label: 'Artikkel-informasjon'

  - dimension: a_contenttype
    label: 'Innholdstype'
    type: string
    sql: ${TABLE}.a_contenttype
    group_label: 'Artikkel-informasjon'

  - dimension: a_datepublish
    label: 'Publiseringsdato'
    type: string
    sql: timestamp(${TABLE}.a_datepublish)
    group_label: 'Artikkel-informasjon'

  - dimension: a_dateupdate
    label: 'Sist oppdatert (dato)'
    type: string
    sql: timestamp(${TABLE}.a_dateupdate)
    group_label: 'Artikkel-informasjon'
    
  - dimension: a_originpub
    label: 'Morpublikasjon'
    type: string
    sql: ${TABLE}.a_originpub
    group_label: 'Artikkel-informasjon'


# Bildegalleri

  - dimension: a_gallery_currentcard
    label: 'Bilde nr'
    type: number
    sql: integer(${TABLE}.a_gallery_currentcard)
    group_label: 'Bildegalleri'

  - dimension: a_gallery_totalcards
    label: 'Antall bilder'
    type: number
    sql: integer(${TABLE}.a_gallery_totalcards)
    group_label: 'Bildegalleri'
    
# Kjøpsløp

  - dimension: a_order_campaign
    label: 'Kampanje'
    type: string
    sql: ${TABLE}.a_order_campaign
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_error
    label: 'Feil i bestillingen'
    type: string
    sql: ${TABLE}.a_order_error
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_paymentoption
    label: 'Betalingsalternativ'
    type: string
    sql: ${TABLE}.a_order_paymentoption
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_period
    label: 'Periode'
    type: string
    sql: ${TABLE}.a_order_period
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_price
    label: 'Pris'
    type: number
    sql: integer(${TABLE}.a_order_price)
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_priceunit
    label: 'Prisenhet'
    type: string
    sql: ${TABLE}.a_order_priceunit
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_product
    label: 'Produkt'
    type: string
    sql: ${TABLE}.a_order_product
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_order_step
    label: 'Steg'
    type: string
    sql: ${TABLE}.a_order_step
    group_label: 'Abonnementsbestilling (kjøpsløp)'

  - dimension: a_relationcount
    label: 'Totalt antall relaterte elementer'
    type: number
    sql: integer(${TABLE}.a_relationcount)
    group_label: 'Artikkel-info'

  - dimension: a_relationcount_embed
    label: 'Antall embedder'
    type: string
    sql: ${TABLE}.a_relationcount_embed
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_factbox
    label: 'Antall faktabokser'
    type: string
    sql: ${TABLE}.a_relationcount_factbox
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_feature
    label: 'Antall relaterte feature-artikler'
    type: string
    sql: ${TABLE}.a_relationcount_feature
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_gallery
    label: 'Antall relaterte bildegallerier'
    type: string
    sql: ${TABLE}.a_relationcount_gallery
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_media
    label: 'Antall relaterte media' #SJEKK
    type: string
    sql: ${TABLE}.a_relationcount_media
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_opinion
    label: 'Antall relaterte debattartikler' #SJEKK
    type: string
    sql: ${TABLE}.a_relationcount_opinion
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_picture
    label: 'Antall relaterte bilder'
    type: string
    sql: ${TABLE}.a_relationcount_picture
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_quote
    label: 'Antall relaterte sitat'
    type: string
    sql: ${TABLE}.a_relationcount_quote
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_story
    label: 'Antall relaterte artikler' #SJEKK!
    type: string
    sql: ${TABLE}.a_relationcount_story
    group_label: 'Artikkel-informasjon'

  - dimension: a_relationcount_video
    label: 'Antall relaterte videoer'
    type: string
    sql: ${TABLE}.a_relationcount_video
    group_label: 'Artikkel-informasjon'

  - dimension: a_section
    label: 'Seksjon'
    type: string
    sql: ${TABLE}.a_section

  - dimension: a_sub_bundle
    label: 'Bundlet publikasjon'
    type: string
    sql: ${TABLE}.a_sub_bundle

  - dimension: a_sub_class
    label: 'Tilgangstype' # owner, family, trial
    description: 'Gyldige verdier er "owner", "family" og "trial".'
    type: string
    sql: ${TABLE}.a_sub_class

  - dimension: a_incentive
    label: 'Insentivvisning'
    description: 'Bruker fikk kun se en teaser av artikkelen.'
    type: yesno
    sql: case when ${TABLE}.a_sub_contentpresentation = 'teaser' then true else false end



  - dimension: a_sub_key
    label: 'Abonnement-ID'
    type: string
    sql: ${TABLE}.a_sub_key



  - dimension: a_premium
    label: 'Plussartikkel'
    type: yesno
    sql: case when ${TABLE}.a_sub_model = 'total' then true else false end



  - dimension: a_plusslesing
    label: 'Plusslesing'
    type: yesno
    sql: |
    
        CASE 
          WHEN (${TABLE}.name IS NOT NULL 
            and ${TABLE}.a_sub_model is not null 
            and ${TABLE}.a_sub_model!='free' 
            and ${TABLE}.a_sub_contentpresentation=='full') 
          THEN true ELSE false END

  - dimension: a_viewtype
    label: 'Visningstype'
    type: string
    sql: |
    
        CASE 
          WHEN (${TABLE}.name IS NOT NULL 
            and ${TABLE}.a_sub_model is not null 
            and ${TABLE}.a_sub_model!='free' 
            and ${TABLE}.a_sub_contentpresentation=='full') 
          THEN 'fullvisning' 
          WHEN (${TABLE}.name IS NOT NULL 
            and ${TABLE}.a_sub_model is not null 
            and ${TABLE}.a_sub_model!='free' 
            and ${TABLE}.a_sub_contentpresentation=='teaser') 
          THEN 'incentiv'
        ELSE 'aapen' END

  # TO BE CONTINUED...


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

  - dimension: alder
    type: number
    sql: case when ((integer(${TABLE}.a_user_age))>12 or (integer(${TABLE}.a_user_age)<100)) then integer(${TABLE}.a_user_age) else null end

  - dimension: aldersgrupper
    type: tier
    tiers: [12,20,30,40,50,60,70,80,90,100]
    style: classic
    sql: case when ((integer(${TABLE}.a_user_age))>12 or (integer(${TABLE}.a_user_age)<100)) then integer(${TABLE}.a_user_age) else null end

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
  

  - dimension: headers_referer
    type: string
    sql: ${TABLE}.headers_referer

  - dimension: headers_user_agent
    type: string
    sql: ${TABLE}.headers_user_agent

  - dimension: sidenavn
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
  
  - dimension: referrer_domain
    type: string
    sql: DOMAIN(${TABLE}.referrer)

  - dimension: remoteip
    type: string
    sql: ${TABLE}.remoteip

  - dimension_group: time
    type: time
    timeframes: [time, date, week,hour, month]
    sql: ${TABLE}.time
    convert_tz: true

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - dimension: visitid
    type: string
    sql: ${TABLE}.visitid




# Målinger

  - measure: aid_users
    label: 'aID-brukere'
    type: count_distinct
    approximate_threshold: 10000
    sql: ${TABLE}.a_user_key

  - measure: browsers
    label: 'Nettlesere'
    type: count_distinct
    approximate_threshold: 10000
    sql: ${TABLE}.browserid
  
  - measure: visits
    label: 'Besøk'
    type: count_distinct
    approximate_threshold: 10000
    sql: ${TABLE}.visitid
    
  - measure: page_views 
    label: 'Sidevisninger (alle)'
    type: count
    approximate_threshold: 10000
    filters:
      page_name: '-NULL'
    # her blir det nok noe filtrering etter hvert

  - measure: acpids
    label: 'Unike artikler'
    type: count_distinct
    approximate_threshold: 10000
    sql: ${a_acpid}
    



# Hidden

  # SJEKK
  - dimension: a_sectiontype
    hidden: true
    type: string
    sql: ${TABLE}.a_sectiontype

  # Not in use
  - dimension: a_sub_aid_customer_id
    hidden: true
    type: string
    sql: ${TABLE}.a_sub_aid_customer_id

  # Use custom dimensions a_plusslesing and a_viewtype instead 
  - dimension: a_sub_contentpresentation ## beholder gammelt felt, men setter til hidden 
    hidden: true
    description: 'Bruker fikk kun se en teaser av artikkelen.'
    type: string
    sql: ${TABLE}.a_sub_contentpresentation
  
  # Use custom dimensions a_plusslesing and a_viewtype instead 
  - dimension: a_sub_model ##beholder gammelt felt, men setter til hidden
    hidden: true
    type: string
    sql: ${TABLE}.a_sub_model
  
  # Subscription ID should not be exposed to (all) looker users, use a_sub_key for unique identification of customer
  - dimension: a_sub_id
    hidden: true
    type: string
    sql: ${TABLE}.a_sub_id  
  
  # Subscription ID should not be exposed to (all) looker users, use a_sub_key for unique identification of customer
  - dimension: a_sub_id_source
    hidden: true
    type: string
    sql: ${TABLE}.a_sub_id_source
  
  # Not in use atm (Hanuman won't give status expired)
  - dimension: a_sub_status
    hidden: true
    type: string
    sql: ${TABLE}.a_sub_status
  
  # Hidden by default?  
  - dimension_group: window_timestamp
    hidden: true
    type: time
    timeframes: [time, date, week, hour, month]
    sql: ${TABLE}.window_timestamp
  
  # Hidden by default?  
  - dimension: headers_origin
    hidden: true
    type: string
    sql: ${TABLE}.headers_origin
