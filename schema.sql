-- should only contain the create table statements

create table players (
    id serial primary key,
    name varchar(100),
    -- games_won integer
);

create table games (
    id serial primary key,

    player1_score integer,
    player2_score integer,

    winner_id integer references players (id),

    -- These are "foreign keys"
    player1_id integer references players (id),
    player2_id integer references players (id)
);