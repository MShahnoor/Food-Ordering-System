var isObject=require("./isObject"),isPrototype=require("./_isPrototype"),nativeKeysIn=require("./_nativeKeysIn"),objectProto=Object.prototype,hasOwnProperty=objectProto.hasOwnProperty;function baseKeysIn(e){if(!isObject(e))return nativeKeysIn(e);var r=isPrototype(e),t=[];for(var o in e)("constructor"!=o||!r&&hasOwnProperty.call(e,o))&&t.push(o);return t}module.exports=baseKeysIn;