var baseEach=require("./_baseEach");function baseAggregator(e,g,o,s){return baseEach(e,function(e,a,r){g(s,e,o(e),r)}),s}module.exports=baseAggregator;