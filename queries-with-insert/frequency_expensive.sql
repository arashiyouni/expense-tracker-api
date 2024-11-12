create table dbo.frequency_expensive
(
    id_frequency int identity
        primary key,
    name         varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.frequency_expensive (id_frequency, name) VALUES (1, N'One-time');
INSERT INTO ExpensiveTracker.dbo.frequency_expensive (id_frequency, name) VALUES (2, N'Monthly');
INSERT INTO ExpensiveTracker.dbo.frequency_expensive (id_frequency, name) VALUES (3, N'Every week');
INSERT INTO ExpensiveTracker.dbo.frequency_expensive (id_frequency, name) VALUES (4, N'In a few days');
