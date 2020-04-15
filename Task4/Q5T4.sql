#How many transactions
SELECT COUNT(*) AS transactions FROM curve.analytics.transaction WHERE (user_id=643181);

#How many FX transactions
SELECT COUNT(pos_auth_currency_iso) AS FX
FROM curve.analytics.transaction
WHERE (user_id=643181 AND pos_auth_currency_iso != 'GBP');

#How many transactions more than hundred gbp
SELECT COUNT(billing_amount_captured) AS num_of_txns_over_100gbp FROM curve.analytics.transaction WHERE (user_id=643181 AND billing_amount_captured >10000);

#How many successful transactions
SELECT COUNT(funding_card_capture_status) AS num_of_successful_txns FROM curve.analytics.transaction WHERE (user_id=643181 AND funding_card_capture_status = 'APPROVED');

