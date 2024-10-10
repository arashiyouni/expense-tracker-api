import { Module } from '@nestjs/common';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { UserModule } from './modules/user/user.module';
import { MongooseModule } from '@nestjs/mongoose';
import { DatabaseModule } from './database/database.module';
import { AdminModule } from './modules/admin/admin.module';
import { ExpensiveModule } from './modules/expensive/expensive.module';
import { CategorieModule } from './modules/categorie/categorie.module';
import { RolesService } from './modules/roles/roles.service';
import { RolesModule } from './modules/roles/roles.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      envFilePath: '.env',
      isGlobal: true,
    }),
    //MongooseModule.forRoot(process.env.DB),
    UserModule,
    DatabaseModule,
    AdminModule,
    ExpensiveModule,
    CategorieModule,
    RolesModule
  ],
  controllers: [],
  providers: [AppService, RolesService],
})
export class AppModule {}
