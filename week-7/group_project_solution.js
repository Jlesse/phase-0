var arr = [1,2,3,3,3,4,4];

var oddLengthSum;
var evenLengthSum;
function sum(listOfNum){
  var tempArray = listOfNum;
  var oddLength;
  var isEven;
  if (tempArray.length % 2 == 0) {
    oddLength = tempArray.slice(0,tempArray.length-2)
    isEven = true;
  }
  else{
    oddLength = tempArray.slice(0,tempArray.length-3)
    isEven = false;
  }
  var total = 0;
  for(i = 0; i<oddLength.length; i++){
    total += oddLength[i];
  }
  oddLengthSum = total;
  if (isEven) {
    evenLengthSum = tempArray[tempArray.length -1];
  }
  else{
    evenLengthSum = tempArray[tempArray.-2]
  }

}
sum(arr);
console.log(oddLengthSum);
console.log(evenLengthSum);
