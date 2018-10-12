view: keyword {
  sql_table_name: imdb.keyword ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [id, movie_keyword.count]
  }
}
