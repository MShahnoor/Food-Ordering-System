var constant=require("./constant"),createInverter=require("./_createInverter"),identity=require("./identity"),objectProto=Object.prototype,nativeObjectToString=objectProto.toString,invert=createInverter(function(t,e,r){null!=e&&"function"!=typeof e.toString&&(e=nativeObjectToString.call(e)),t[e]=r},constant(identity));module.exports=invert;