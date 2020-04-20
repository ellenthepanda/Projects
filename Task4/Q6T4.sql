SELECT city, public.shared_addresses.country, address_line1, postcode, house_number
FROM public.shared_addresses
LEFT JOIN public.api_users ON public.api_users.home_address_id = public.shared_addresses.id
WHERE (public.api_users.first_name='Elisabeth' AND public.api_users.last_name='Muller');
