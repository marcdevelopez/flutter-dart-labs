// ---------------------------------------------
// Path Package Example (package:path/path.dart)
// ---------------------------------------------

// The path package provides functions for manipulating file system paths
import 'package:path/path.dart' as p;

void main() {
  // The code joins directory and file names to create a full path
  var fullPath = p.join('directory', 'file.txt');
  print('Full path: $fullPath');
  // The output should look like this:
  // Full path: directory/file.txt
}
