// Authentifizierungslogik
import argon2 from "argon2";
import { db } from "./db.js";

export async function registerUser(username, email, password) {

  const hash = await argon2.hash(password);

  await db.execute(
    "INSERT INTO users (user_name, email, pwd_hash) VALUES (?, ?, ?)",
    [username, email, hash]
  );
}

export async function loginUser(username, password) {

  const [rows] = await db.execute(
    "SELECT pwd_hash FROM users WHERE user_name = ?",
    [username]
  );

  if (rows.length === 0) return false;

  const hash = rows[0].pwd_hash;

  return await argon2.verify(hash, password);
}