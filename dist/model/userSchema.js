import joi from "joi";
export var userSchema = joi.object({
    name: joi.string().required()
});
