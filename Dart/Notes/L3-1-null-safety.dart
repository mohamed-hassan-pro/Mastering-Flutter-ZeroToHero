// Null safety is feature in Dart to prevent runtime errors that occur because (Null Exceptions)
// The error is because he objects to the variable not having a value
void non_nullable() {
  int num1;
  int num2 = 10;
  // int result = num1 * num2;
}

// -------------------------------------------
// after a data type (?) => null operator (nullable)
// Use a condition in case you are not sure if a value has been assigned to the variable before the operation
// The error occurs because the variable is already involved in an operation
void one_nullable() {
  int? num1;
  int num2 = 10;
  int result;
  // result = num1 * num2;
  // num1 = 2;
  if (num1 != null) {
    result = num1 * num2;
  } else {
    result = 0;
  }
  print(result);
}

// -------------------------------------------
void tow_nullable() {
  int? num1;
  // use ?? operator to provide a default value in case the variable is null
  int result = num1 ?? 5;
  print(result); //output: 5
  // if num1 is null assign 5 to result else assign num1 to result

  num1 = 10;
  print(num1 ?? 5); //output: 10
}

// -------------------------------------------
void three_nullable() {
  int? num1;
  // num1=5 for example from a JSON file
  int result = num1!;
  print(result); //output: 5
  // the ! operator tells dart that you are sure that the variable has a value
}

void four_nullable() {
  int? num1;
  print(num1?.toDouble()); //output: null
  // If the value is empty do not execute it
  // the ?. operator tells dart to perform the operation only if the variable is not null
}

//summary of Null safety
// 1- nullable variable: a variable that may have a value or may be null
// 2- non-nullable variable: a variable that must have a value before being used
// 3- null-aware operators: operators that help to handle nullable variables safely

//summary of operators
// 1- ? make the variable nullable
// 2- ! assert that the variable is not null
// 3- ?? provide a default value in case the variable is null
// 4- ?. perform an operation only if the variable is not null

void main() {
  //non_nullable();
  // one_nullable();
  //compile-time error☝🏻
  tow_nullable();
  // three_nullable();
  // four_nullable();
}

//⭐
// If you think it might be empty
//  put ? in its definition
//    and use ?? or ?. when calling it to be safe
//      but if you are sure it is not null use ! to force the value (at your own risk)