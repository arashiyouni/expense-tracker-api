create table dbo.expense
(
    id_expensive     int identity
        primary key,
    title            varchar(200),
    description      varchar(200),
    created_at       datetime default getdate(),
    mount            decimal(10, 2),
    status_expensive int
        references dbo.expensive_status,
    categories       int
        references dbo.categories,
    frequency        int
        references dbo.frequency_expensive,
    payment_source   int
        references dbo.type_payment,
    id_user          int
        references dbo.users
)
go

INSERT INTO ExpensiveTracker.dbo.expense (id_expensive, title, description, created_at, mount, status_expensive, categories, frequency, payment_source, id_user) VALUES (1, N'Food & Drinks', N'Lunch with the family', N'2024-11-12 00:00:00.000', 63.00, 3, 1, 2, 1, 1);
