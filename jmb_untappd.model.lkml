connection: "bigquery"
include: "*.view"

datagroup: jmb_untappd_default_datagroup {
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(checkin_id) FROM justin.untappd ;;
}

persist_with: jmb_untappd_default_datagroup

explore: untappd {}
