var apply=require("./_apply"),arrayPush=require("./_arrayPush"),baseRest=require("./_baseRest"),castSlice=require("./_castSlice"),toInteger=require("./toInteger"),FUNC_ERROR_TEXT="Expected a function",nativeMax=Math.max;function spread(t,n){if("function"!=typeof t)throw new TypeError(FUNC_ERROR_TEXT);return n=null==n?0:nativeMax(toInteger(n),0),baseRest(function(e){var r=e[n],a=castSlice(e,0,n);return r&&arrayPush(a,r),apply(t,this,a)})}module.exports=spread;