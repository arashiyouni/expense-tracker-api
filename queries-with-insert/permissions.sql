create table dbo.permissions
(
    id_permissions int identity
        primary key,
    name           varchar(200)
)
go

INSERT INTO ExpensiveTracker.dbo.permissions (id_permissions, name) VALUES (1, N'view-expensive');
INSERT INTO ExpensiveTracker.dbo.permissions (id_permissions, name) VALUES (2, N'create-expensive');
INSERT INTO ExpensiveTracker.dbo.permissions (id_permissions, name) VALUES (3, N'edit-expensive');
INSERT INTO ExpensiveTracker.dbo.permissions (id_permissions, name) VALUES (4, N'delete-expensive');
INSERT INTO ExpensiveTracker.dbo.permissions (id_permissions, name) VALUES (5, N'create-report');
