// Dart Map Example: A comprehensive guide to understanding Maps
// A Map is a collection of key-value pairs where each key is unique
// Keys and values can be of any type (String, int, double, bool, objects, etc.)
// Maps are also known as dictionaries or associative arrays in other languages

void main() {
  // 1. Creating a Map with explicit type
  // Syntax: Map<KeyType, ValueType> mapName = {key1: value1, key2: value2}
  Map<String, String> employee = {
    'name': 'Sabbir Ahmed',
    'department': 'Engineering',
    'position': 'Senior Developer',
    'office': 'Dhaka Branch'
  };

  // 2. Printing the entire Map
  print('1. Full Employee Map:');
  print(employee);
  print(''); // Empty line for readability

  // 3. Accessing values using keys
  print('2. Accessing specific values:');
  print("Employee Name: ${employee['name']}");
  print("Department: ${employee['department']}");
  print(''); // Empty line for readability

  // 4. Updating a value
  print('3. Updating a value:');
  employee['office'] = 'Faridpur Branch';
  print("Updated office: ${employee['office']}");
  print("Updated Map: $employee");
  print(''); // Empty line for readability

  // 5. Adding a new key-value pair
  print('4. Adding a new key-value pair:');
  employee['salary'] = '100000';
  print("Map after adding salary: $employee");
  print(''); // Empty line for readability

  // 6. Removing a key-value pair
  print('5. Removing a key-value pair:');
  employee.remove('position');
  print("Map after removing position: $employee");
  print(''); // Empty line for readability

  // 7. Checking if a key or value exists
  print('6. Checking key and value existence:');
  print("Contains key 'name': ${employee.containsKey('name')}");
  print("Contains key 'position': ${employee.containsKey('position')}");
  print("Contains value 'Engineering': ${employee.containsValue('Engineering')}");
  print(''); // Empty line for readability

  // 8. Getting all keys and values
  print('7. Getting keys and values:');
  var keys = employee.keys.toList();
  var values = employee.values.toList();
  print("Keys: $keys");
  print("Values: $values");
  print(''); // Empty line for readability

  // 9. Map length and type
  print('8. Map properties:');
  print("Map length: ${employee.length}");
  print("Map type: ${employee.runtimeType}");
  print(''); // Empty line for readability

  // 10. Creating a dynamic Map (mixed types)
  print('9. Dynamic Map with mixed types:');
  Map<String, dynamic> student = {
    'name': 'Alice',
    'age': 20,
    'gpa': 3.8,
    'isEnrolled': true
  };
  print("Student Map: $student");
  print("Student Map type: ${student.runtimeType}");
  print(''); // Empty line for readability

  // 11. Iterating through a Map
  print('10. Iterating through a Map:');
  print('Using forEach:');
  employee.forEach((key, value) {
    print('$key: $value');
  });
  print(''); // Empty line for readability

  // 12. Using Map entries
  print('11. Using Map entries:');
  for (var entry in employee.entries) {
    print('${entry.key} -> ${entry.value}');
  }
  print(''); // Empty line for readability

  // 13. Creating an empty Map and adding entries
  print('12. Working with an empty Map:');
  Map<int, String> idToName = {};
  idToName[101] = 'Bob';
  idToName[102] = 'Charlie';
  print("ID to Name Map: $idToName");
  print(''); // Empty line for readability

  // 14. Merging two Maps
  print('13. Merging Maps:');
  Map<String, String> additionalInfo = {
    'phone': '123-456-7890',
    'email': 'sabbir@example.com'
  };
  employee.addAll(additionalInfo);
  print("Map after merging: $employee");
  print(''); // Empty line for readability

  // 15. Clearing a Map
  print('14. Clearing a Map:');
  employee.clear();
  print("Map after clearing: $employee");
  print("Is Map empty? ${employee.isEmpty}");
  print(''); // Empty line for readability

  // 16. Practical Example: Inventory Management
  print('15. Practical Example - Inventory Management:');
  Map<String, int> inventory = {
    'apples': 50,
    'bananas': 30,
    'oranges': 20
  };
  
  // Adding new stock
  inventory['mangoes'] = 15;
  
  // Updating stock
  inventory['apples'] = inventory['apples']! + 10;
  
  // Checking stock
  print("Current Inventory:");
  inventory.forEach((item, quantity) {
    print('$item: $quantity units');
  });
  print(''); // Empty line for readability

  // 17. Handling null safety with Maps
  print('16. Null Safety with Maps:');
  Map<String, int?> scores = {
    'math': 85,
    'english': null, // No score recorded
    'science': 90
  };
  print("Scores: $scores");
  print("English score: ${scores['english'] ?? 'Not recorded'}");
}
