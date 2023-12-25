import pkg from "pg";
import * as dotenv from "dotenv";

dotenv.config();
const { Pool } = pkg;

export const pool = new Pool({
  connectionString:
    "postgres://dldobkqr:H53w6lyyMPY60JMJFrxwUYhKVFGU-int@flora.db.elephantsql.com/dldobkqr",
  // process.env.POSTGRESQL_CONNECTION_URL,
});

export function query(text, params) {
  return pool.query(text, params);
}
