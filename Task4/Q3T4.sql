SELECT
       (SELECT COUNT (tags) FROM analytics.user
        WHERE tags LIKE '%subscription-blue%') AS subscription_blue,
        (SELECT COUNT (tags) FROM analytics.user
        WHERE tags LIKE '%subscription-metal%') AS subscription_metal,
        (SELECT COUNT (tags) FROM analytics.user
        WHERE tags LIKE '%subscription-black%') AS subscription_black
FROM analytics.user
GROUP BY subscription_blue;
