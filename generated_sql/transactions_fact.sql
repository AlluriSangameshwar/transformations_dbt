```sql
SELECT transaction_id AS id, ROUND(amount, 2) AS total_amount, TIMESTAMPADD(HOUR, 5, event_ts) AS transaction_time
FROM `raw_prj.fdp_staging.transactions`
WHERE amount IS NOT NULL AND amount != 'nan'
```
