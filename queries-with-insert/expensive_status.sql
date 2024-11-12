create table dbo.expensive_status
(
    id_status int identity
        primary key,
    name      varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.expensive_status (id_status, name) VALUES (1, N'In progress');
INSERT INTO ExpensiveTracker.dbo.expensive_status (id_status, name) VALUES (2, N'Not started');
INSERT INTO ExpensiveTracker.dbo.expensive_status (id_status, name) VALUES (3, N'Done');
