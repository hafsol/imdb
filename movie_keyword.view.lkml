view: movie_keyword {
  sql_table_name: imdb.movie_keyword ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: keyword_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.keyword_id ;;
  }

  dimension: movie_id {
    type: number
    sql: ${TABLE}.movie_id ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [id, keyword.id]
  }
}
