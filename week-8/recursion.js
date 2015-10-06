
function printnums(num){
  if (num === 5) {
    console.log("base case");
    return 5
  }
  else{
    console.log("recursive call" + num)
    return num + printnums(num+1);
  }
}

function printloop(num){
  while(num < 6){
    num += 1
  }
}
printnums(1);