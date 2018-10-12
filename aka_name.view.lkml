view: aka_name {
  sql_table_name: imdb.aka_name ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.person_id ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [id, name]
  }
}
