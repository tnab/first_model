view: sql_runner_query_pdt_test_1 {
  derived_table: {
    sql: select *
      from demo_db.products
      limit 10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  set: detail {
    fields: [
      id,
      category,
      item_name,
      brand,
      retail_price,
      department,
      rank,
      sku
    ]
  }
}
