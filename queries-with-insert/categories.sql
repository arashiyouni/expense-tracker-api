create table dbo.categories
(
    id_categories int identity
        primary key,
    name          varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (1, N'Groceries');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (2, N'Leisure');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (3, N'Electronics');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (4, N'Utilities');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (5, N'Clothing');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (6, N'Health');
INSERT INTO ExpensiveTracker.dbo.categories (id_categories, name) VALUES (7, N'Others');
