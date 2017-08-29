CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT NULL, priority INTEGER NOT NULL DEFAULT '1', created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('continue this project', 'day2 of this project', 1, '2017-08-29 10:37:00', null),
('turn on the AC', 'because someone turned on the heat', 1, '2017-08-29 10:38:00', null),
('finish snippet project', 'fix styling on snippet project', 1, '2017-08-29 10:35:00', null),
('get an oil change', 'change oil on Venza', 2, '2017-08-29 09:37:00', null),
('wash the car', 'wash the Mazda', 3, '2017-08-28 10:37:00', '2017-08-28 11:00:00'),
('change ink cartridge', 'HP needs color cartridge', 1, '2017-08-28 10:37:00', '2017-08-29 11:00:00'),
('make the bed', 'probably not going to happen', 3, '2017-08-28 10:37:00', null),
('get food', 'because will be hungry', 1, '2017-08-29 10:40:00', null),
('eat food', 'because I am hungry', 1, '2017-08-29 11:37:00', null),
('wash more dishes', 'because no one washes the dishes', 1, '2017-08-29 10:37:00', null),
('pick up garbage', 'people throw stuff on the ground', 1, '2017-08-29 11:37:00', null),
('change the light bulb', 'it is dark', 1, '2017-08-29 11:15:00', null),
('buy tickets for game', 'to see baseball game', 2, '2017-08-29 11:15:00', null),
('buy tires', 'the tires are getting bald', 2, '2017-08-29 11:00:00', null),
('write code', 'because javascript', 1, '2017-08-29 11:15:00', '2017-08-29 10:50:00'),
('listen to podcast', 'learn fundamentals', 1, '2017-08-29 11:18:00', null),
('put in ear plugs', 'Isaac is singing', 1, '2017-08-29 11:20:00', null);

SELECT title, details, priority, created_at, completed_at FROM todos WHERE completed_at IS NULL AND priority = 3;

SELECT COUNT(id), priority
FROM todos
WHERE completed_at IS NULL
GROUP BY priority;

SELECT COUNT(id), priority, created_at
FROM todos
WHERE created_at > (current_date - interval '30' day)
GROUP BY priority, created_at
ORDER BY priority;

SELECT * FROM todos
WHERE completed_at IS NULL
AND priority = 1
ORDER BY created_at DESC
LIMIT 1;
