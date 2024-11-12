create table dbo.rol
(
    id_rol int identity
        primary key
        references dbo.permissions,
    name   varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.rol (id_rol, name) VALUES (1, N'admin');
INSERT INTO ExpensiveTracker.dbo.rol (id_rol, name) VALUES (2, N'user');
INSERT INTO ExpensiveTracker.dbo.rol (id_rol, name) VALUES (3, N'moderate');
