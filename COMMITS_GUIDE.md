# 📌 Commit Types Table for Your Repo

| Type    | When to Use It                                                      | Example                                                      |
|---------|---------------------------------------------------------------------|--------------------------------------------------------------|
| **feat**   | When you add a new feature or new code.                              | `feat(constants): add storeName constant for shop name`       |
| **fix**    | When you fix a bug or error in code or configuration.                | `fix(widget_test): adjust const usage in pumpWidget`          |
| **docs**   | Documentation or comment changes (README, notes, glossary…).         | `docs(notes): translate Dart basics notes to English`         |
| **style**  | Formatting changes that don't affect logic (indentation, quotes…).   | `style: reformat Dart code with dartfmt`                      |
| **refactor** | Code improvements that don't change functionality.                 | `refactor(basics): simplify list initialization`              |
| **test**   | Changes or addition of tests.                                       | `test(lab1): add widget tests for Hello World app`            |
| **chore**  | Configuration, dependencies, CI/CD, linter changes…                 | `chore(pubspec): add flutter_lints to improve code practices` |
| **perf**   | Changes that improve performance.                                   | `perf(isolates): optimize heavy computation with isolates`    |

---

## 📌 Additional Rules

- **Optional Scope** → Goes in parentheses to help organize (e.g., notes, labs, constants, pubspec, tests).
  - Example: `feat(notes): add explanation about Dart Streams`
  - Example: `fix(pubspec): correct package name in yaml`
- **Message always in English, present tense, imperative mood.**
  - ✅ `add`, `fix`, `update`, `remove`
  - ❌ `added`, `fixed`, `updates`, `removed`
- **Use prefixes already adopted in your repo:**
  - `Exercise:` → for mini-exercises commits.
  - `Lab:` → for course labs commits.
  - `Notes:` → for Markdown notes.
