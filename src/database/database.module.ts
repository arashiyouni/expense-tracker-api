import { Module } from '@nestjs/common';
import { MsSQLProvider } from './database.provider';

@Module({
    providers: [
        ...MsSQLProvider
    ],
    exports: [
        ...MsSQLProvider
    ]
})
export class DatabaseModule {}
