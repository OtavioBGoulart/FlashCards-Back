import Joi from "joi";


const signupSchema = Joi.object({
    name: Joi.string().alphanum().max(15).min(3).required(),
    email: Joi.string().email().required(),
    password: Joi.string().min(6).required(),
    confirmPassword: Joi.string().required()
});

const signinSchema = Joi.object({
    email: Joi.string().email().required(),
    passwor: Joi.string().required(),
});

export {
    signinSchema,
    signupSchema
}