import express from "express";

const userRoutes = express.Router();
import { getAllUsers } from "../models/userModels.js";

userRoutes.get("/", async function (req, res) {
  const allUsers = await getAllUsers();
  res.status(200).json(allUsers);
});

export default userRoutes;
