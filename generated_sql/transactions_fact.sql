```sql
SELECT `transaction_id`, ROUND(`amount`, 3) AS total_amount, TIMESTAMPADD(HOUR, 5.5, `event_ts`) AS transaction_time
FROM raw_prj.fdp_staging.transactions
WHERE IS_NAN(`total_amount`);
```
