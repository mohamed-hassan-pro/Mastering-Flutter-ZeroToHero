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
  print(salaryOfEmployee['A']);//[Key]
  
  salaryOfEmployee['D'] = 4000; //Declared new Key:Value used [Key] = Value
  listOfNumbers[0] = 10; //Modifiable list used [index]
  setOfNumbers[1] = 20; //Error: Unmodifiable set
  listOfNumbers.add(5); //Add new value to list
  setOfNumbers.add(5); //Add new value to set
}
