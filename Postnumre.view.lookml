- view: postcodes
  sql_table_name: geography.postcodes
  fields:

  - dimension: accuracy
    type: number
    sql: ${TABLE}.accuracy

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: fylke
    type: string
    sql: ${TABLE}.fylke

  - dimension: fylkenummer
    type: string
    sql: ${TABLE}.fylkenummer

  - dimension: kommune
    type: string
    sql: ${TABLE}.kommune

  - dimension: kommunenr
    type: number
    sql: ${TABLE}.kommunenr

  - dimension: lat
    type: number
    sql: ${TABLE}.lat

  - dimension: lng
    type: number
    sql: ${TABLE}.lng

  - dimension: nn_name
    type: string
    sql: ${TABLE}.NN_name

  - dimension: nn_nr
    type: number
    sql: ${TABLE}.NN_nr

  - dimension: postcode
    type: number
    sql: ${TABLE}.postcode

  - dimension: stedsnavn
    type: string
    sql: ${TABLE}.stedsnavn

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [nn_name]

