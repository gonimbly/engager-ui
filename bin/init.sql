CREATE TABLE IF NOT EXISTS answers (
    id SERIAL,
    value integer,
    question_id integer,
    question_text text,
    user_id integer,
    user_name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

CREATE TABLE IF NOT EXISTS codes (
    id SERIAL,
    dollar_value integer,
    reward_id integer,
    text text,
    used boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

CREATE TABLE IF NOT EXISTS questions (
    id SERIAL,
    text text,
    points integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

CREATE TABLE IF NOT EXISTS questions_users (
    id SERIAL,
    question_id integer,
    state text DEFAULT 'new'::text,
    user_id integer
);

CREATE TABLE IF NOT EXISTS rewards (
    id SERIAL,
    name text,
    cost integer,
    description text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL,
    email text,
    first text,
    last text,
    password text,
    picture_url text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

CREATE TABLE IF NOT EXISTS wallets (
    id SERIAL,
    user_id integer,
    amount integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);

INSERT INTO questions (text, points, created_at, updated_at) VALUES
    ('How likely are you to recommend', 50, now(), now()),
    ('How satisfied are you with Go Nimbly services', 50, now(), now()),
    ('How satisfied are you with Go Nimbly products', 25, now(), now()),
    ('How likely are you to endorse Go Nimbly', 25, now(), now());

INSERT INTO codes (dollar_value, reward_id, text, used, created_at, updated_at) VALUES
    (50, 1, 'AAA-PGH-DDD', FALSE, now(),now()),
    (25, 2, 'BBB-PPP-000', FALSE, now(),now()),
    (50, 3, 'CCC-PGH-DDD', FALSE, now(),now()),
    (25, 4, 'DDD-PPP-000', FALSE, now(),now());

INSERT INTO questions_users (question_id, state, user_id) VALUES
    (1, 'new', 1),
    (2, 'new', 1),
    (3, 'new', 1),
    (4, 'new', 1);

INSERT INTO rewards (name, cost, description, created_at, updated_at) VALUES
    ('Uber 50', 200, '$50 in Uber credit',  now(), now()),
    ('Uber 25', 100, '$25 in Uber credit',  now(), now()),
    ('Lyft 50', 200, '$50 in Lyft credit',  now(), now()),
    ('Lyft 25', 100, '$25 in Lyft credit',  now(), now());

INSERT INTO users (email, first, last, password, created_at, updated_at) VALUES
    ('test@test.com', 'test', 'test2', 'nothing',  now(),  now());

INSERT INTO wallets (user_id, amount, created_at, updated_at) VALUES
    (1, 50,  now(),  now());