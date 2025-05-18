// Dart Set Example: A comprehensive guide to understanding Sets
// A Set is a collection of unique elements, with no duplicates allowed
// Elements can be of any type (String, int, double, bool, objects, etc.)
// Sets are unordered, meaning elements have no fixed position
// Useful for storing unique items and performing set operations (union, intersection, etc.)

void main() {
  // 1. Creating a Set with explicit type
  // Syntax: Set<Type> setName = {element1, element2, element3}
  Set<String> fruits = {'Apple', 'Banana', 'Orange'};
  
  // 2. Printing the entire Set
  print('1. Full Fruits Set:');
  print(fruits);
  print(''); // Empty line for readability

  // 3. Adding a single element
  print('2. Adding a single element:');
  fruits.add('Mango');
  print("Set after adding Mango: $fruits");
  // Adding a duplicate element (will be ignored)
  fruits.add('Apple');
  print("Set after attempting to add duplicate Apple: $fruits");
  print(''); // Empty line for readability

  // 4. Adding multiple elements
  print('3. Adding multiple elements:');
  fruits.addAll(['Grape', 'Pineapple']);
  print("Set after adding multiple fruits: $fruits");
  print(''); // Empty line for readability

  // 5. Removing an element
  print('4. Removing an element:');
  fruits.remove('Banana');
  print("Set after removing Banana: $fruits");
  print(''); // Empty line for readability

  // 6. Checking if an element exists
  print('5. Checking element existence:');
  print("Contains Apple: ${fruits.contains('Apple')}");
  print("Contains Banana: ${fruits.contains('Banana')}");
  print(''); // Empty line for readability

  // 7. Getting Set length and type
  print('6. Set properties:');
  print("Set length: ${fruits.length}");
  print("Set type: ${fruits.runtimeType}");
  print(''); // Empty line for readability

  // 8. Creating a dynamic Set (mixed types)
  print('7. Dynamic Set with mixed types:');
  Set<dynamic> mixedItems = {'Alice', 25, true, 3.14};
  print("Mixed Items Set: $mixedItems");
  print("Mixed Set type: ${mixedItems.runtimeType}");
  print(''); // Empty line for readability

  // 9. Iterating through a Set
  print('8. Iterating through a Set:');
  print('Using forEach:');
  fruits.forEach((fruit) {
    print('Fruit: $fruit');
  });
  print(''); // Empty line for readability

  // 10. Using for-in loop
  print('9. Using for-in loop:');
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }
  print(''); // Empty line for readability

  // 11. Creating an empty Set
  print('10. Working with an empty Set:');
  Set<int> numbers = {};
  numbers.addAll([1, 2, 3, 4]);
  print("Numbers Set: $numbers");
  print(''); // Empty line for readability

  // 12. Set operations: Union, Intersection, Difference
  print('11. Set operations:');
  Set<String> fruitsA = {'Apple', 'Banana', 'Mango'};
  Set<String> fruitsB = {'Mango', 'Orange', 'Grape'};
  
  // Union: Combines elements from both sets (no duplicates)
  print("Union of fruitsA and fruitsB: ${fruitsA.union(fruitsB)}");
  
  // Intersection: Elements common to both sets
  print("Intersection of fruitsA and fruitsB: ${fruitsA.intersection(fruitsB)}");
  
  // Difference: Elements in fruitsA but not in fruitsB
  print("Difference (fruitsA - fruitsB): ${fruitsA.difference(fruitsB)}");
  print(''); // Empty line for readability

  // 13. Converting Set to List
  print('12. Converting Set to List:');
  List<String> fruitsList = fruits.toList();
  print("Fruits as List: $fruitsList");
  print("List type: ${fruitsList.runtimeType}");
  print(''); // Empty line for readability

  // 14. Clearing a Set
  print('13. Clearing a Set:');
  fruits.clear();
  print("Set after clearing: $fruits");
  print("Is Set empty? ${fruits.isEmpty}");
  print(''); // Empty line for readability

  // 15. Practical Example: Unique User IDs
  print('14. Practical Example - Unique User IDs:');
  Set<int> userIds = {1001, 1002, 1003};
  
  // Adding a new user ID
  userIds.add(1004);
  
  // Attempting to add a duplicate ID
  userIds.add(1002); // Ignored
  
  // Checking if an ID exists
  print("Current User IDs: $userIds");
  print("Is ID 1003 registered? ${userIds.contains(1003)}");
  print(''); // Empty line for readability

  // 16. Null Safety with Sets
  print('15. Null Safety with Sets:');
  Set<String?> nullableFruits = {'Apple', null, 'Orange'};
  print("Nullable Fruits Set: $nullableFruits");
  print("Contains null: ${nullableFruits.contains(null)}");
}