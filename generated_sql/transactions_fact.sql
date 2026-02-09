```sql
SELECT `txn_id` AS transaction_id, ROUND(`amount`, 3) AS total_amount, TIMESTAMPADD(HOUR, 5.5, UNIX_TIMESTAMP(`event_ts`)) AS transaction_time
FROM raw_prj.fdp_staging.transactions
WHERE IS_NAN(`amount`) = FALSE AND dbt_is_incremental() = TRUE;
```
