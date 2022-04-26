create table users(
    id integer auto_increment primary key,
    username varchar(255) unique not null,
    created_at timestamp default now()
);

insert into users(username) values 
('BlueTheCat'), ('CharlieBrown'), ('SophieIschenko');

create table photos(
    id integer auto_increment primary key,
    image_url varchar(255) not null,
    user_id integer not null, foreign key (user_id) references users(id),
    created_at timestamp default now()
);

insert into photos(image_url, user_id) values
 ('/eruheruher',1),
 ('/eruheruher',2),
 ('/eruheruher',3),
 ('/eruheruher',1),
 ('/eruheruher',2),
 ('/eruheruher',3);

select photos.image_url, users.username  from photos join users on photos
.user_id=users.id ;

create table comments(
    id integer auto_increment primary key,
    comment_text varchar(255) not null,
    user_id integer not null,
    photo_id integer not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id)references photos(id)
);

insert into comments(comment_text, user_id, photo_id) values
('Meow', 1, 3),
('Wuff', 2, 3),
('Amazing', 3, 3),
('i love that!', 1, 2);

create table likes(
    user_id integer not null,
    photo_id integer not null,
    created_at timestamp default now(),
    foreign key (user_id) references users(id),
    foreign key (photo_id) references photos(id),
    primary key(user_id, photo_id)
);

insert into likes (user_id, photo_id) values
(1, 3),
(2, 2),
(3,1);

create table followers(
    folgender_id integer not null,
    gefolgter_id integer not null,
    created_at timestamp default now(),
    foreign key (folgender_id) references users(id),
    foreign key(gefolgter_id) references users(id),
    primary key (folgender_id, gefolgter_id)
);

insert into followers (folgender_id, gefolgter_id) values
(1,2),
(1,3),
(3,2);