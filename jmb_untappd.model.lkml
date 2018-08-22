connection: "bigquery"

# include all the views
include: "*.view"

datagroup: jmb_untappd_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jmb_untappd_default_datagroup

explore: untappd {}
