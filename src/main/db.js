import { Client } from 'pg';

export default async () => {
  const client = new Client({
    user: 'postgres',
    password: 'xxXX1234',
    host: 'localhost',
    port: '5432',
    database: 'forEx042025',
  });

  await client.connect();
  return client;
};