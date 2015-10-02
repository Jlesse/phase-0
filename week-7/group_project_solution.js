var arr = [1,2,7,3,4,9,20,85];

var oddLengthSum;
var remainingLengthSum;

/*takes an array named list of num, truncates the array into an odd length array,
sums the all numbers in the odd length array and stores the sum in odd length
sum. The numbers from listOfNum that did not fit into the odd length array are summed stored in remainingLengthSum.*/
function sum(listOfNum){
  var tempArray = listOfNum;
  var oddLength;
  var isEven;
  if (tempArray.length % 2 == 0) {
    console.log("number list is even length");
    oddLength = tempArray.slice(0,tempArray.length-1);
    isEven = true;
  }
  else{
    console.log("number list is odd length");
    oddLength = tempArray.slice(0,tempArray.length-2);
    isEven = false;
  }
  var total = 0;
  for(i = 0; i<oddLength.length; i++){
    total += oddLength[i];
  }
  oddLengthSum = total;
  if (isEven) {
    remainingLengthSum = tempArray[tempArray.length -1];
  }
  else{
    remainingLengthSum = tempArray[tempArray.length -2] + tempArray[tempArray.length-1];
  }

}
sum(arr);
console.log(oddLengthSum);
console.log(remainingLengthSum);




//Takes an array named list of numbers, truncates the array into an oddlength the array named oddLenth, calculates the mean of the elements in oddLength and stores the result in oddLengthMean. the mean is calculated for the elements that were truncated from listOfNum and the result if stored in remainingLengthMean.

var oddLengthMean;
var remainingLengthMean;

function mean(listOfNum){
  var tempArray = listOfNum;
  var oddLength;
  var isEven;
  if (tempArray.length % 2 == 0) {
    console.log("number list is even length");
    oddLength = tempArray.slice(0,tempArray.length-1);
    isEven = true;
  }
  else{
    console.log("number list is odd length");
    oddLength = tempArray.slice(0,tempArray.length-2);
    isEven = false;
  }
  var total = 0;
  for(i = 0; i<oddLength.length; i++){
    total += oddLength[i];
  }
  oddLengthMean = total/oddLength.length

   if (isEven) {
    remainingLengthMean = tempArray[tempArray.length -1];
  }
  else{
    remainingLengthMean = (tempArray[tempArray.length -2] + tempArray[tempArray.length-1])/2;
  }
}

mean(arr);
console.log(oddLengthMean);
console.log(remainingLengthMean);

/*Takes an array named listOfNum, truncates into an odd length aray and stores it in oddLength. Calculates the median of oddLength and stores the result in oddLength mean. The median of the portion that was truncated from listOfNum median is always going to be the last element since the truncated portion will always be one or to elements long. The last element is of listOfNum is stored in remainingLengthMedian.*/

var oddLengthMedian;
var remainingLengthMedian;

function median(listOfNum){
  var tempArray = listOfNum;
  var oddLength;
  var isEven;
  if (tempArray.length % 2 == 0) {
    console.log("number list is even length");
    oddLength = tempArray.slice(0,tempArray.length-1);
  }
  else{
    console.log("number list is odd length");
    oddLength = tempArray.slice(0,tempArray.length-2);
  }
  var mid = Math.floor(oddLength.length/2);
  oddLengthMedian = oddLength[mid];
  remainingLengthMedian = listOfNum[listOfNum.length-1];
}

median(arr);
console.log(oddLengthMedian);
console.log(remainingLengthMedian);
