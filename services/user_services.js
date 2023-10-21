const userModel = require("../model/user_model");
const jwt = require('jsonwebtoken');
const UserModel=require("../model/user_model")
class UserService{
    static async registerUser(email,password){
        try{
            const createUser=new UserModel({email,password});
            return await createUser.save();
        }
        catch(err){
            throw err;
        }
    }

    static async checkUser(email){
        try{
            return await userModel.findOne({email})
        }
        catch(err){
            throw err;
        }
    }
    static async generateToken(tokendata,secretKey,jwt_expiry){
        return jwt.sign(tokendata,secretKey,{expiresIn:jwt_expiry})
    }
}


module.exports=UserService;