view: untappd {
  sql_table_name: justin.untappd ;;

  dimension: beer_abv {
    type: number
    sql: ${TABLE}.beer_abv ;;
  }

  dimension: beer_ibu {
    type: number
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
    type: string
    sql: ${TABLE}.beer_url ;;
  }

  dimension: bid {
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
    type: string
    sql: ${TABLE}.brewery_url ;;
  }

  dimension: checkin_id {
    type: number
    sql: ${TABLE}.checkin_id ;;
  }

  dimension: checkin_url {
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

  dimension: venue_lat {
    type: number
    sql: ${TABLE}.venue_lat ;;
  }

  dimension: venue_lng {
    type: number
    sql: ${TABLE}.venue_lng ;;
  }

  dimension: venue_name {
    type: string
    sql: ${TABLE}.venue_name ;;
  }

  dimension: venue_state {
    type: string
    sql: ${TABLE}.venue_state ;;
  }

  measure: count {
    type: count
    drill_fields: [venue_name, brewery_name, beer_name]
  }
}
