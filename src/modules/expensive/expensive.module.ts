import { Module } from '@nestjs/common';
import { ExpensiveService } from './expensive.service';

@Module({
  providers: [ExpensiveService]
})
export class ExpensiveModule {}
