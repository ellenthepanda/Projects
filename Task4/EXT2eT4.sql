SELECT COUNT(public.pe_issuer_request.type) AS num_of_pending_refunds,
       api_users.email
FROM public.pe_issuer_request
LEFT JOIN analytics.curve_card ON analytics.curve_card.id = public.pe_issuer_request.curve_card_id
LEFT JOIN public.api_users ON public.api_users.id = analytics.curve_card.user_id
WHERE (type = 'Refund' AND transaction_id IS NULL)
GROUP BY api_users.email;
