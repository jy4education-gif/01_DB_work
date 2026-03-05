// HTTP Routes
import express from "express";
import { registerUser, loginUser } from "./auth.js";

const router = express.Router();

router.post("/register", async (req,res) => {

  const {username,email,password} = req.body;

  await registerUser(username,email,password);

  res.send("User created");
});

router.post("/login", async (req,res) => {

  const {username,password} = req.body;

  const ok = await loginUser(username,password);

  if(!ok){
    return res.status(401).send("Login failed");
  }

  req.session.user = username;

  res.send("Login success");
});

export default router;