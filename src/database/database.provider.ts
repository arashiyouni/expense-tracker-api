import { DataSource } from "typeorm";

export const MsSQLProvider = [
    {
        //etiqueta para referirse a un modulo
        name: 'SQL_SERVER_CATEGORIES',
        provide: 'DATA_SOURCE_CATEGORIES',
        useFactory: async () => {
            const dataSource = new DataSource({
                type: 'mssql',
                host: "localhost",
                port: 1434,
                username: "sa",
                password: "mysecret1234!",
                database: "ExpensiveAPI",
                options: {
                    trustServerCertificate: true,
                },
               // entities: [join(__dirname, '../../**/*.entity.{js,ts}')]
            })
            try {
                await dataSource.initialize();
                console.log("🤝 | Data Source (SQL): <expensive api> has been initialized!");
                return dataSource;
            } catch (err) {
                console.error("🚑 | Error during Data Source <expensive api> initialization:", err);
            }
        }
    }
]