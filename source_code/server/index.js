const express = require("express");
var http = require("http");
const app = express();
// const cors = require("cors");
const port = process.env.PORT || 5001;
var server = http.createServer(app);
// const { Socket } = require("socket.io");


var io = require("socket.io")(server)

// midleware
app.use(express.json());
var clients ={};
const routes =require("./routes");
app.use("/routes",routes);
app.use("/uploads", express.static("uploads"));

// app.use(cors());

io.on("connection", (socket) => {
  console.log("connected");
  console.log(socket.id ,"has joined");
  socket.on("signin",(id)=>{
    console.log(id);
    clients[id]= socket;
    console.log(clients);
  });
  socket.on("message",(msg)=>{
    console.log(msg);
    let targetId=msg.targetId;
    if (clients[targetId]) clients[targetId].emit("message",(msg));
  });
});

// app.router("/check").get((req,res)=>{
//   return res.json("Working fine");
// });
app.get("/check", (req, res) => {
  return res.json("Working fine");
});


server.listen(port, "0.0.0.0",() => {
  console.log("server started");
});
