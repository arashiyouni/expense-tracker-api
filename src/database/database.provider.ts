import mongoose from "mongoose";
import { DataSource } from "typeorm";

//Aqui me estoy asegurando que mi aplicación pueda conectarse y usar la BD
export const MongoProvider = [
    {
        //aca le digo que proveere la conexion de mongo utilizando 
        //MONGO_EXPRENSIVE_TRACKER
        provide: 'MONGO_EXPRENSIVE_TRACKER',
        useFactory: async (): Promise<typeof mongoose> => {
            try {
                const connection = await mongoose.connect(process.env.DB);
                console.log('🍏 | MongoDB <expensive tracker api> connection established 🎉');
                return connection;
            } catch (error) {
                console.error('🚩🍏 | Failed connected mongoDB 😭:', error.message);
                throw error;
            }
        }
    }
]

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
                database: process.env.BD_SQL,
                options: {
                    trustServerCertificate: true,
                },
               // entities: [join(__dirname, '../../**/*.entity.{js,ts}')]
            })
            try {
                await dataSource.initialize();
                console.log("🤝 | Data Source (SQL): <categorieapi> has been initialized!");
                return dataSource;
            } catch (err) {
                console.error("🚑 | Error during Data Source <categorieapi> initialization:", err);
            }
        }
    }
]