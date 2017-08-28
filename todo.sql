CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT NULL, priority INTEGER NOT NULL DEFAULT '1', created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('create a todo list', 'create a todo list using SQL', 1, '2017-08-28 12:51:05', null), ('wash car', 'wash my car', 1, '2017-08-28 14:51:05', '2017-08-28 14:58:00'), ('feed the cat', 'give food to the cat', 2, '2017-08-28 11:51:05', null), ('wash dishes','wash all the dishes', 2, '2017-08-27 11:00:05', null), ('mow grass', 'mow the grass and trim', 1, '2017-08-28 15:00:00', null);

SELECT title, details, priority, created_at, completed_at FROM todos WHERE completed_at IS NOT NULL;

SELECT title, details, priority, created_at, completed_at FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-08-28 15:15:00' WHERE id = 1;

DELETE FROM todos WHERE completed_at IS NOT NULL;
