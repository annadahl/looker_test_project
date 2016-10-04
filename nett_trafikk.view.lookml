- view: Nettrafikk
  
  sql_table_name: ( SELECT * FROM {% table_date_range date_filter amedia-analytics-eu:webtraffic.events_ %})
  fields:
  
  - filter: date_filter #This date filter is used in the table_date_range tab and as an explore filter.
    type: date

# Generelt

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

  - dimension: a_livenews
    label: 'Livenews?'
    type: string
    sql: ${TABLE}.a_livenews
    group_label: 'Generelt'

  - dimension: a_networksite
    label: 'Nettverks-nettsted'
    type: string
    sql: ${TABLE}.a_networksite
    group_label: 'Generelt'

  - dimension: a_platform_version
    label: 'Plattform-versjon'
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
    sql: ${TABLE}.a_datepublish
    group_label: 'Artikkel-informasjon'

  - dimension: a_dateupdate
    label: 'Sist oppdatert (dato)'
    type: string
    sql: ${TABLE}.a_dateupdate
    group_label: 'Artikkel-informasjon'
    
  - dimension: a_originpub
    label: 'Morpublikasjon'
    type: string
    sql: ${TABLE}.a_originpub
    group_label: 'Artikkel-informasjon'


# Bildegalleri

  - dimension: a_gallery_currentcard
    label: 'Bilde nr'
    type: string
    sql: ${TABLE}.a_gallery_currentcard
    group_label: 'Bildegalleri'

  - dimension: a_gallery_totalcards
    label: 'Antall bilder'
    type: string
    sql: ${TABLE}.a_gallery_totalcards
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
    type: string
    sql: ${TABLE}.a_order_price
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


# Målinger

  - measure: aid_users
    label: 'aID-brukere'
    type: count_distinct
    approximate_threshold: 100
    sql: ${TABLE}.a_user_key

  - measure: browsers
    label: 'Nettlesere'
    type: count_distinct
    approximate_threshold: 100
    sql: ${TABLE}.browserid
    
  - measure: page_views 
    label: 'Sidevisninger (alle)'
    type: count
    approximate_threshold: 100    
    # her blir det nok noe filtrering etter hvert
  
  - measure: pageviews_web
    label: 'Sidevisninger nett/mobil'
    type: count
    approximate_threshold: 100
    filters:
      a_edition: '-eavis'
  
  - measure: pageviews_epaper
    label: 'Sidevisninger nett/mobil'
    type: count
    approximate_threshold: 100
    filters:
      a_edition: 'eavis'
    
  - measure: acpids
    label: 'Unike artikler'
    type: count_distinct
    approximate_threshold: 100
    sql: ${a_acpid}
    



