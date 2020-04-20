SELECT uid, email, referral_code
FROM public.api_users;
SELECT uid, email, referral_code, 'https://www.curve.come/join#'+ referral_code AS referral_link
FROM public.api_users;
