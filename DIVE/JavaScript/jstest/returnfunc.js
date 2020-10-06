function divide(i,j){
  if (j === 0){
    return "error";
  }else {
    return i / j;
  }
}
function showresult(i,j,computeFunc){
  let result = computeFunc(i,j);
  if (result === "error"){
    return result;
  }else {
    return `${result * 100}パーセントです`;
  }
}
console.log(showresult(2, 4,divide));
//console.log(divide(2, 0));
