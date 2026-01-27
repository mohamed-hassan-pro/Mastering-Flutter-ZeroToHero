/*
a) Start with List<int> nums = [1, 2, 2, 3, 3, 3].
b) Convert it to a Set<int> to remove duplicates and print the set.
c) Use add(), remove(), and contains() on the set, printing after each step.*/
void main() {
  List<int> nums = [1, 2, 2, 3, 3, 3];

  Set<int> numsSet = nums.toSet(); //convert list to set to remove duplicates
  print('nums set: $numsSet');

  numsSet.add(4);
  print('nums set after adding: $numsSet');

  numsSet.remove(4);
  print('nums set after removing: $numsSet');
}
