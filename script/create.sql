create table users (
    username varchar(50) not null primary key,
    password varchar(50) not null,
    enabled boolean not null
) engine = InnoDb;

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username),
    unique index authorities_idx_1 (username, authority)
) engine = InnoDb;


INSERT INTO users(`username`,`password`,`enabled`) VALUES( 'admin','21232f297a57a5a743894a0e4a801fc3',1);

INSERT INTO authorities(`username`,`authority`) VALUES('admin','ROLE_ADMIN');

COMMIT;