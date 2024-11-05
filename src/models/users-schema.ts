import { Users } from "@prisma/client";
import Joi from "joi";


const signupSchema = Joi.object<createUserParam>({
    name: Joi.string().alphanum().max(15).min(3).required(),
    email: Joi.string().email().required(),
    password: Joi.string().min(6).required(),
    confirmPassword: Joi.string().required()
});

const signinSchema = Joi.object<loginUserParam>({
    email: Joi.string().email().required(),
    password: Joi.string().required(),
});

export {
    signinSchema,
    signupSchema
}

export type createUserParam = Pick<Users, "name" | "email" | "password"> & {
    confirmPassword: string
}

export type loginUserParam = Pick<Users, "email" | "password">