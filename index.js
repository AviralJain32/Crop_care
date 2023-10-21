const app=require("./app");
// const db=require("./config/db");
// const userModel=require('./model/user.model');
const port=3000;

app.get("/",(req,res)=>{
    console.log("hello world");
})
app.listen(port,()=>{
    console.log("success");
})
