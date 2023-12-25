import { query } from "../db/index.js";

export async function getAllUsers() {
  const result = await query("SELECT * from user_data");
  const allUsers = result.rows;
  return allUsers;
}

export async function createUser(userList) {
  const result = await query(
    `INSERT INTO user_data (
            first_name,
            sur_name,
            gender,
            other_gender,
            dob,
            phone,
            email,
            password,
            location,
            education,
            sector_one,
            sector_two,
            sector_three,
            criteria,
            ethnicity,
            self_describe_text
        )
        VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16) RETURNING *`,
    [
      userList.firstName,
      userList.surName,
      userList.gender,
      userList.otherGender,
      userList.dob,
      userList.phone,
      userList.email,
      userList.password,
      userList.location,
      userList.education,
      userList.sectorOne,
      userList.sectorTwo,
      userList.sectorThree,
      userList.criteria,
      userList.ethnicity,
      userList.selfDescribe,
    ]
  );
  return result.rows;
}
