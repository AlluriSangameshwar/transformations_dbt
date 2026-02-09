```sql
SELECT transaction_id AS id, ROUND(total_amount, 2) AS amount, TIMESTAMP_ADD(`raw_prj.fdp_staging.transactions`.`event_ts`, INTERVAL '1' HOUR) AS transaction_time
FROM `raw_prj.fdp_staging.transactions`
WHERE IS_NAN(total_amount) = 0 AND dbt_is_incremental() = TRUE;
```
