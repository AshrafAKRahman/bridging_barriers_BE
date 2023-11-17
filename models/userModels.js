import { query } from "../db/index.js";

export async function getAllUsers() {
  const result = await query("SELECT * from user_data");
  const allUsers = result.rows;
  return allUsers;
}
