/*
1
What is the role of the main function in a Dart program, and when does it run?

    The main function is the entry point of every Dart application
    It is the first function that gets executed when you run the program
    Without a main function, the program doesn't know where to start

2
Explain the differences between var, dynamic, and specific types like int/double/num/String.
  Var:
    It is a keyword to declare variables
    If you assign a value immediately, Dart infers the type and it becomes fixed
    However, if you declare a var without an initial value
    it allows assigning values of different types later (similar to dynamic)

  Dynamic:
    We use dynamic when we do not know the data type at compile time.
    It is essential when handling data coming from external sources like APIs
    JSON files, or large datasets where the type might vary

Provide a short example.
3
Compare List, Set, and Map: what they store, basic operations, and a simple use case for each.
*/

void main() {
  List<int> listOfNumbers = [1, 2, 3, 4];
  //List: can declared between => []
  print(listOfNumbers[0]);

  Set<int> setOfNumbers = {1, 2, 3, 4};
  //Set: can declared between => {unique values}
  //Set: faster than List for searching values
  //Set(unique values) does cannot duplicate values and (Unmodifiable) unordered
  setOfNumbers[1] = 20; //Error: Unmodifiable set
  //best for adding values without duplication
  setOfNumbers.add(5); //Add new value to set
  print(setOfNumbers);

  Map<String, num> salaryOfEmployee = {'A': 1000, 'B': 2000, 'C': 3000};
  //Map: can declared between => {unique identifier(Key): Value} => (any data type for Key and Value)
  print(salaryOfEmployee['A']); //[Key]

  salaryOfEmployee['D'] = 4000; //Declared new Key:Value used [Key] = Value
  listOfNumbers[0] = 10; //Modifiable list used [index]
  setOfNumbers[1] = 20; //Error: Unmodifiable set
  listOfNumbers.add(5); //Add new value to list
  setOfNumbers.add(5); //Add new value to set
}
