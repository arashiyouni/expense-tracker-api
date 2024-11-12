create table dbo.users
(
    id_user  int identity
        primary key,
    username varchar(50),
    name     varchar(200),
    lastname varchar(200),
    email    varchar(250),
    password varchar(255),
    id_rol   int
        constraint fk_users_rol
            references dbo.rol
)
go

INSERT INTO ExpensiveTracker.dbo.users (id_user, username, name, lastname, email, password, id_rol) VALUES (1, N'arashiyouni', N'Angie', N'Espinoza', N'angie@gmail.com', N'$2a$12$WDhClVGyA8qENr4LYNkB0OEk.AlfrojOPt0XQhEmBI/pnI5CQ.9sW', 2);
