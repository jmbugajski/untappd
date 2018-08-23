view: untappd {
  sql_table_name: justin.untappd ;;

  dimension: beer_abv {
    label: "Beer ABV"
    type: number
    sql: ${TABLE}.beer_abv ;;
  }

  measure: avg_beer_abv {
    label: "Avg Beer ABV"
    type: average
    value_format_name: decimal_1
    sql: ${TABLE}.beer_abv ;;
  }

  dimension: beer_ibu {
    label: "Beer IBU"
    type: number
    sql: ${TABLE}.beer_ibu ;;
  }

  measure: avg_beer_ibu {
    label: "Avg Beer IBU"
    type: average
    value_format_name: decimal_0
    sql: ${TABLE}.beer_ibu ;;
  }

  dimension: beer_name {
    type: string
    sql: ${TABLE}.beer_name ;;
  }

  dimension: beer_type {
    type: string
    sql: ${TABLE}.beer_type ;;
  }

  dimension: beer_url {
    label: "Beer URL"
    type: string
    sql: ${TABLE}.beer_url ;;
  }

  dimension: bid {
    label: "Beer ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.bid ;;
  }

  dimension: brewery_city {
    type: string
    sql: ${TABLE}.brewery_city ;;
  }

  dimension: brewery_country {
    type: string
    sql: ${TABLE}.brewery_country ;;
  }

  dimension: brewery_id {
    label: "Brewery ID"
    type: number
    sql: ${TABLE}.brewery_id ;;
  }

  dimension: brewery_name {
    type: string
    sql: ${TABLE}.brewery_name ;;
  }

  dimension: brewery_state {
    type: string
    sql: ${TABLE}.brewery_state ;;
  }

  dimension: brewery_url {
    label: "Brewery URL"
    type: string
    sql: ${TABLE}.brewery_url ;;
  }

  dimension: checkin_id {
    primary_key: yes
    label: "Check-In ID"
    type: number
    sql: ${TABLE}.checkin_id ;;
  }

  dimension: checkin_url {
    label: "Check-In URL"
    type: string
    sql: ${TABLE}.checkin_url ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: flavor_profiles {
    type: string
    sql: ${TABLE}.flavor_profiles ;;
  }

  dimension: purchase_venue {
    type: string
    sql: ${TABLE}.purchase_venue ;;
  }

  dimension: rating_score {
    type: number
    sql: ${TABLE}.rating_score ;;
  }

  measure: avg_rating_score {
    label: "Avg Rating Score"
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.rating_score ;;
  }

  dimension: serving_type {
    type: string
    sql: ${TABLE}.serving_type ;;
  }

  dimension: venue_city {
    type: string
    sql: ${TABLE}.venue_city ;;
  }

  dimension: venue_country {
    type: string
    sql: ${TABLE}.venue_country ;;
  }

  dimension: venue_location {
    type: location
    sql_latitude: ${TABLE}.venue_lat ;;
    sql_longitude: ${TABLE}.venue_lng ;;
  }

  dimension: venue_name {
    type: string
    sql: ${TABLE}.venue_name ;;
  }

  dimension: venue_state {
    type: string
    sql: ${TABLE}.venue_state ;;
  }

  dimension: find_the_source {
    type: number
    sql: case when ${brewery_name} = ${venue_name} then 1 else 0 end ;;
  }

  measure: total_sources_found {
    type: sum
    sql: ${find_the_source} ;;
  }

  measure: checkin_count {
    type: count
    label: "Check-In Count"
    drill_fields: [venue_name, brewery_name, beer_name]
  }
}
