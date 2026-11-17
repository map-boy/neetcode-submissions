-- Write your query below
SELECT users.name,
COALESCE(
    (SELECT SUM(distance) FROM rides WHERE rides.user_id = users.id),0
    )travelled_distance

FROM users
ORDER BY  travelled_distance DESC, users.name;

