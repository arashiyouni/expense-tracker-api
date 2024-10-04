import { Module } from '@nestjs/common';
import { MongoProvider, MsSQLProvider } from './database.provider';

@Module({
    providers: [
        ...MongoProvider,
        ...MsSQLProvider
    ],
    exports: [
        ...MongoProvider,
        ...MsSQLProvider
    ]
})
export class DatabaseModule {}
