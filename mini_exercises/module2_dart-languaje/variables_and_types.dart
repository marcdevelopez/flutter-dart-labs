// We use 'const' because this value is fixed and known at compile time
// We declare it outside of 'main' so it's available throughout the file
// ignore_for_file: dead_code, unnecessary_null_comparison

const String storeName = 'Tech Store';

// This code could be greatly improved with a class serving as a product model
// and methods to update its data, but for now it's an exercise on variables
// and types based on knowledge acquired in this course. When we get to
// classes and objects, this code could be significantly improved.
void main() {
  // Generate product ID using the existing function generateProductId()
  // Use 'final' because the value is assigned once and won't change,
  // but it's not known at compile time, only at runtime
  final String productId = generateProductId();

  // Declare the product name using 'var'
  var productName = 'Wireless Mouse';

  // Declare initial stock as 'int'
  int productStock = 20;

  // Declare price as 'double'
  double productPrice = 29.99;

  // Declare availability status as 'bool'
  bool isAvailable = true;

  // Create a list of product tags (List<String>)
  List<String> productTags = ['electronics', 'accessories', 'wireless'];

  // Create a map with supplier data (Map<String, String>)
  Map<String, String> supplierInfo = {
    'name': 'Tech Supplies Co.',
    'contact': 'support@techstore.com',
  };

  // Declare product image as nullable (String?)
  // obviously the URL is imaginary
  String? productImage = 'https://example.com/images/wireless_mouse.png';

  // -----------------------

  // Print product data using print and string interpolation
  print('\n===== PRODUCT INFORMATION =====');
  print('Store: $storeName');
  print('Product ID: $productId');
  print('Name: $productName');
  // The first $ is for the dollar symbol, using escape (\$) so it can be
  // printed, the second $ is to interpolate the variable
  print('Price: \$$productPrice');
  print('Stock: $productStock units');
  // Here we use a ternary operator to show "Yes" or "No"
  print('Available: ${isAvailable ? "Yes" : "No"}');
  // We use the join method of List to convert the list into a comma-separated string
  print('Tags: ${productTags.join(', ')}');
  print('Supplier: ${supplierInfo['name']} ${supplierInfo['contact']}');
  // Check if 'productImage' is null before printing its value
  if (productImage != null) {
    // In a more complex program, we would need to validate that the URL is correct
    // and call a service to download the image
    print('Image: $productImage');
  } else {
    print('Image: No image available');
  }

  // Simulate changes in data (new name, stock change, new image) - The product has changed
  print('\n--- UPDATING PRODUCT DATA ---');
  productName = 'Ergonomic Wireless Mouse';
  productStock -= 3; // Sold 3 units
  productImage = null; // Image no longer available

  // Print updated data
  print('\n===== UPDATED PRODUCT INFORMATION =====');
  print('Store: $storeName');
  print('Product ID: $productId');
  print('Name: $productName');
  print('Price: \$$productPrice');
  print('Stock: $productStock units');
  print('Available: ${isAvailable ? "Yes" : "No"}');
  print('Tags: ${productTags.join(', ')}');
  print('Supplier: ${supplierInfo['name']} ${supplierInfo['contact']}');

  // Check again if 'productImage' is null before printing its value
  // We could use a function to avoid repeating code, we'll do this when we cover
  // functions in the next section
  if (productImage != null) {
    print('Image: $productImage');
  } else {
    print('Image: No image available');
  }

  // Let's create a second product to demonstrate using a dynamic list
  // for a list of products, to which products could be added
  print('\n===== ADDING SECOND PRODUCT =====');
  final String productId2 = generateProductId();
  var productName2 = 'USB-C Hub';
  int productStock2 = 15;
  double productPrice2 = 15.99;
  bool isAvailable2 = true;
  List<String> productTags2 = ['electronics', 'accessories', 'usb-c'];
  Map<String, String> supplierInfo2 = {
    'name': 'Gadget World',
    'contact': 'support@techstore.com',
  };
  String? productImage2 = 'https://example.com/images/usb_c_hub.png';

  print('Store: $storeName');
  print('Product ID: $productId2');
  print('Name: $productName2');
  print('Price: \$$productPrice2');
  print('Stock: $productStock2 units');
  print('Available: ${isAvailable2 ? "Yes" : "No"}');
  print('Tags: ${productTags2.join(', ')}');
  print('Supplier: ${supplierInfo2['name']} ${supplierInfo2['contact']}');
  if (productImage2 != null) {
    print('Image: $productImage2');
  } else {
    print('Image: No image available');
  }

  // Create a list to hold multiple products
  List<Map<String, dynamic>> inventory = [
    {
      'id': productId,
      'name': productName,
      'stock': productStock,
      'price': productPrice,
      'available': isAvailable,
      'tags': productTags,
      'supplier': supplierInfo,
      'image': productImage,
    },
    {
      'id': productId2,
      'name': productName2,
      'stock': productStock2,
      'price': productPrice2,
      'available': isAvailable2,
      'tags': productTags2,
      'supplier': supplierInfo2,
      'image': productImage2,
    },
  ];

  // Print inventory summary
  print('\n===== INVENTORY SUMMARY ======');
  print('Total products in inventory: ${inventory.length}');

  // Calculate total inventory value
  double totalValue = 0.0;
  // Here the inventory List has two products, and each product is a Map<String, dynamic>
  for (var item in inventory) {
    // At this point we need to ensure that the types are correct
    // because being a Map<String, dynamic> they can contain anything
    // If they weren't correct, the program would fail at runtime
    totalValue += (item['price'] as double) * (item['stock'] as int);
  }
  // the toStringAsFixed(2) method limits to 2 decimal places, and we surround it with braces {}
  // so it's interpreted as an expression within the string interpolation
  // and the method is applied to the totalValue variable instead of literally printing
  // the method name
  print('Total inventory value: \$${totalValue.toStringAsFixed(2)}');
  print('==============================\n');
}

// Function to generate a product ID
String generateProductId() {
  // Returns a String with prefix and current timestamp
  return 'prod_${DateTime.now().millisecondsSinceEpoch}';
}

/// Returns a String with prefix and current timestamp
