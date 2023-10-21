const mongoose=require("mongoose");
const connection=mongoose.createConnection('mongodb://localhost:27017/Flutter_Project').on("open",()=>{
    console.log("mongodb connected");
}).on("error",()=>{
    console.log("error");
});

module.exports=connection;