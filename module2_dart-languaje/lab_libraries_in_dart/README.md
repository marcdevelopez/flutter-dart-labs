# 🧩 Lab: Libraries in Dart

**Module:** 2 – Dart Language  
**Topic:** Built-in, external, and custom libraries  

---

## 🎯 Objectives

- Use common built-in Dart libraries (`dart:core`, `dart:math`, `dart:async`, `dart:convert`)
- Install and use external packages (`http`, `intl`, `path`)
- Create and import custom Dart libraries
- Organize and reuse code efficiently across files

---

## 📁 Project Structure
```

lab_libraries_in_dart/
├─ core.dart
├─ math.dart
├─ async.dart
├─ convert.dart
├─ http.dart
├─ intl.dart
├─ path.dart
├─ custom.dart
├─ main.dart
└─ pubspec.yaml

````

---

## ▶️ Run Examples
Each file can be executed independently:
```bash
dart core.dart
dart math.dart
dart async.dart
dart convert.dart
dart http.dart
dart intl.dart
dart path.dart
dart main.dart
````

---

## 🧠 Key Concepts

| Library      | Purpose                                |
| ------------ | -------------------------------------- |
| dart:core    | Core types like int, String, List, Map |
| dart:math    | Math constants and random functions    |
| dart:async   | Asynchronous programming with Futures  |
| dart:convert | JSON encoding/decoding                 |
| http         | Perform HTTP requests                  |
| intl         | Format dates and text for localization |
| path         | Manipulate file paths                  |
| custom       | Create reusable user-defined libraries |

---

## 🏁 Output Example (summary)

```
Hello, Dart!
42
[Apple, Banana, Cherry]
{Alice: 90, Bob: 85}
Sine: 0.7071067811865475
Cosine: 0.7071067811865475
Random Number: 78
Data fetched!
Name: Alice
Age: 30
{"name":"Bob","age":25}
Formatted date: 2025-10-29
Full path: directory/file.txt
Sum: 15
Difference: 5
```

---

## 🧩 Notes

* Always run `dart pub get` after editing dependencies.
* Use `import 'dart:...';` for built-in libs and `import 'package:...';` for external packages.
* Custom libraries require `library` declaration at the top and `import 'filename.dart';` to use them.

````

