create table dbo.type_payment
(
    id_type_payment int identity
        primary key,
    name            varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.type_payment (id_type_payment, name) VALUES (1, N'credit card');
INSERT INTO ExpensiveTracker.dbo.type_payment (id_type_payment, name) VALUES (2, N'credit debit');
INSERT INTO ExpensiveTracker.dbo.type_payment (id_type_payment, name) VALUES (3, N'cash');
