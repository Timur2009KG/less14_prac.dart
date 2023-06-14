void main(List<String> arguments) {
  // var myList = [10, 20, 30, 40, 50];
  // print(addFunction(myList));
  testFunk(100);
}

testFunk(int n) {
  if (n < 1){
    return;
  }
  testFunk(n - 1);
  print(n);
}






int addFunction(List<int> myList) {
  print(myList);

  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] + addFunction(myList.sublist(1));
  }
}



int addFunctionSecond(List<int> myList) {
  print(myList);

  if (myList.length <= 1) {
    return myList[0];
  } else {
    return secondFunkHelper(myList);
  }
}

int secondFunkHelper(List<int>array){
return array[0] + addFunctionSecond(array.sublist(1));
}