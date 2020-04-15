SELECT api_users.uid, first_name, last_name
FROM public.api_users
LEFT JOIN analytics.user ON analytics.user.id = api_users.id
WHERE first_name='Elisabeth' AND last_name='Muller';
