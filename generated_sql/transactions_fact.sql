```sql
SELECT `transaction_id`, ROUND(`amount`, 3) AS total_amount, TIMESTAMP_ADD(UNIX_TIMESTAMP(`event_ts`), INTERVAL -7 HOUR) AS transaction_time
FROM raw_prj.fdp_staging.transactions
WHERE IS_NAN(`total_amount`) = 0 AND dbt_is_incremental() = TRUE;
```
