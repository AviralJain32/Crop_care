const UserService = require("../services/user_services");
const userService=require("../services/user_services");

exports.register=async(req,res,next)=>{
    try{
        const {email,password}=req.body;
        console.log(res);
        const successRes=await userService.registerUser(email,password);

        res.json({status:true,sucess:"user registered successfully"})
    }
    catch(error){
        console.log(error);
    }
}

exports.login=async(req,res,next)=>{
    try{
        const {email,password}=req.body;

        const user=await userService.checkUser(email);

        if(!user){
            throw new Error('User Dont Exist');
        }

        const isMatch=await user.comparePassword(password);
        if(isMatch===false){
            throw new Error('Password InValid');
        }

        let tokendata={_id:user._id,email:user.email};

        const token=await UserService.generateToken(tokendata,"secretKey","1h");
        res.status(200).json({status:true,token:token});

    }
    catch(error){
        console.log(error);
    }
}
