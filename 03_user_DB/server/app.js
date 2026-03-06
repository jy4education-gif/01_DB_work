// Server
import dotenv from "dotenv";
dotenv.config();
import express from "express";
import session from "express-session";
import routes from "./routes.js";

const app = express();

app.use(express.json());

app.use(session({
  secret: "supersecret",
  resave: false,
  saveUninitialized: false
}));

app.use(routes);

app.listen(3000, () => {
  console.log("Server running on port 3000");
});