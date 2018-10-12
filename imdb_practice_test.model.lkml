connection: "bigquery_publicdata"

# include all the views
include: "*.view"

datagroup: imdb_practice_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: imdb_practice_test_default_datagroup

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=5.24
# NOTE: for BigQuery specific considerations

explore: actor_firstname_title_year {}

explore: aka_name {}

explore: cast_info {}

explore: char_name {}

explore: company_name {}

explore: keyword {}

explore: movie_companies {}

explore: movie_info {}

explore: movie_keyword {
  join: keyword {
    #_each
    type: left_outer
    sql_on: ${movie_keyword.keyword_id} = ${keyword.id} ;;
    relationship: many_to_one
  }
}

explore: name {}

explore: title {}
