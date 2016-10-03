- view: Nett-trafikk

  sql_table_name: ( SELECT * FROM {% table_date_range date_filter amedia-analytics-eu:webtraffic.events_ %})
  fields:

  - filter: date_filter #This date filter is used in the table_date_range tab and as an explore filter.
    type: date

  - dimension: a_acpid
    label: 'Artikkel-ID'
    type: string
    sql: ${TABLE}.a_acpid

  - dimension: a_byline
    label: 'Byline'
    type: string
    sql: ${TABLE}.a_byline

