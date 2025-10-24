# 📘 Commit Guide for _IBM Flutter & Dart Labs Repository_

This guide defines **how to name branches, commits, and tags** for every lab or module in your `flutter-dart-labs` project.
It follows **Conventional Commits**, adapted to your course structure and workflow.

---

## 🧭 Repository Structure

```
flutter-dart-labs/
├─ COMMITS_GUIDE.md
├─ GLOSSARY.md
├─ README.md
├─ mini_exercises/
│  ├─ exercise_1/
│  ├─ exercise_2/
│  └─ ...
├─ module1_introduction/
│  ├─ notes/
│  │  ├─ 1_Introduccion_a_Flutter.md
│  │  ├─ 2_Entorno_de_desarrollo.md
│  │  └─ ...
│  └─ lab_hello_world_web/
│     ├─ lib/
│     ├─ pubspec.yaml
│     └─ README.md
├─ module2_dart-languaje/
│  ├─ notes/
│  │  ├─ 1_Internals_of_Dart.md
│  │  ├─ 2_Expert_Viewpoints_Fundamentals_of_Dart.md
│  │  ├─ 3_Variables_and_types.md
│  │  ├─ 4_Functions_methods_in_Dart.md
│  │  ├─ 5_Classes_in_Dart.md
│  │  └─ 6_Libraries_in_Dart.md
│  └─ labs_variables_functions_methods_Dart/
│     ├─ lib/
│     │  └─ main.dart
│     ├─ pubspec.yaml
│     └─ README.md
└─ module3_flutter_basics/
   ├─ notes/
   └─ labs/

```

---

## 🌿 Branch Naming Convention

Each lab should be developed in a **separate branch**, based on its module and lab name:

```
moduleX/lab_<short-description>
```

**Examples:**

```
git checkout -b module1/lab_hello_world_web
git checkout -b module2/lab_variables_functions
```

---

## 🧩 Commit Types Table

| Type         | When to Use It                                                 | Example                                                      |
| ------------ | -------------------------------------------------------------- | ------------------------------------------------------------ |
| **feat**     | When you add a new feature, widget, or functionality.          | `feat(module1-lab1): implement HelloWorld widget`            |
| **fix**      | When you fix a bug or configuration issue.                     | `fix(module1-lab1): correct MaterialApp title`               |
| **docs**     | For documentation or Markdown files (README, notes, glossary). | `docs(module1-lab1): write lab instructions and setup steps` |
| **style**    | Code style changes (formatting, indentation, quotes…).         | `style(lab1): reformat Dart code with dart format`           |
| **refactor** | Code improvement without changing functionality.               | `refactor(lab1): simplify widget build tree`                 |
| **test**     | Add or modify test files.                                      | `test(lab1): add widget test for Hello World screen`         |
| **chore**    | Dependency, configuration, or setup changes.                   | `chore(repo): add flutter_lints to analysis_options.yaml`    |
| **perf**     | Performance optimizations.                                     | `perf(lab2): improve list rendering performance`             |

---

## 🗂 Scopes and Prefixes

- **Scope** goes inside parentheses after the type → helps organize by context:
  Examples:

  - `feat(module1-lab1): implement HelloWorld widget`
  - `docs(module2-lab2): add explanation for Dart functions`
  - `fix(pubspec): correct missing dependency`

- **Optional Prefixes for clarity:**

  - `Lab:` → practical course lab commits
  - `Exercise:` → small code exercises
  - `Notes:` → Markdown notes and summaries

✅ Example:
`feat(Lab: module1-hello-world): implement main.dart base scaffold`

---

## ✍️ Message Format

Each commit message must follow:

```
<type>(<scope>): <short imperative message>
```

**Examples:**

- `feat(module1-lab1): implement basic HelloWorld widget`
- `docs(module1-lab1): explain code flow and add screenshots`
- `refactor(module2-lab1): extract function to utils.dart`

**Rules:**

- Always in **English**
- Use **present tense** and **imperative mood**

  - ✅ `add`, `fix`, `create`, `update`
  - ❌ `added`, `fixed`, `created`, `updated`

- Keep it **under 100 characters**

## 🏷 Tagging Progress (Modules, Notes, Labs, and Mini-Exercises)

Tags help you keep track of progress and mark stable checkpoints in your learning path.
Always use **annotated tags** (with `-a` and `-m`) so the tag stores author, date, and message.

### 🔹 1. Labs completed

When a **Lab** is finished and merged into `main`, create a tag:

```bash
git tag -a module1-lab1-done -m "Completed Lab 1: Hello World Web"
git push --tags
```

---

### 🔹 2. Notes or theoretical sections completed

When you finish a full **set of notes** within a module:

```bash
git tag -a module2-notes-done -m "Finished Module 2 notes: Variables, Functions, and Libraries in Dart"
git push --tags
```

---

### 🔹 3. Mini-Exercises completed

When you finish a small independent exercise (in `/mini_exercises` or similar):

```bash
git tag -a exercise-dart-collections-done -m "Completed Mini-Exercise: Dart Collections practice"
git push --tags
```

---

### 🔹 4. Full modules completed

When you complete **all notes and labs** of a module:

```bash
git tag -a module2-done -m "Completed Module 2: Exploring Dart Language – notes and labs"
git push --tags
```

---

### 🧭 Tag naming rules summary

| Purpose                | Tag Format                   | Example                          |
| ---------------------- | ---------------------------- | -------------------------------- |
| Finished Lab           | `moduleX-labY-done`          | `module2-lab1-done`              |
| Finished Notes         | `moduleX-notes-done`         | `module2-notes-done`             |
| Finished Mini-Exercise | `exercise-<short-name>-done` | `exercise-dart-collections-done` |
| Full Module            | `moduleX-done`               | `module2-done`                   |


All tags should use **English**, **lowercase**, and **hyphen-separated names**.

---

### 🧠 Why this matters

Using consistent annotated tags lets you:

* Return to any stage of your learning process (`git checkout <tag>`).
* Track progress per module.
* Present your repository as a structured and transparent learning archive.
* Prepare for future “releases” if the repo evolves into a public reference.

---

## 🔁 Example Workflow

```bash
# Create a new branch for the Lab
git checkout -b module1/lab_hello_world_web

# Work on code...
flutter run

# Add and commit changes
git add .
git commit -m "feat(module1-lab1): implement Hello World web app"

# Update README
git commit -m "docs(module1-lab1): add execution steps and screenshots"

# Push to remote
git push -u origin module1/lab_hello_world_web

# Open a PR and merge into main (squash if desired)
# Then tag:
git tag module1-lab1-done
git push --tags
```

---

## 🧹 Additional Recommendations

- Use **one commit per logical change** (avoid “misc updates”).
- Keep **README and notes commits separate** from code commits.
- Use `dart format .` before committing.
- Include `analysis_options.yaml` for linter consistency.
- Prefer short, clear, and self-explanatory commit messages.

---

## ⚙️ Updating `.gitignore` — Important Rules

The `.gitignore` file affects the **entire repository**, not just one branch.
To avoid inconsistencies or files being tracked accidentally, follow these rules:

### ✅ When and how to modify `.gitignore`

1. **Only edit `.gitignore` in `main`** (or in a dedicated config branch like `config/gitignore-update`).
2. **Never modify it inside feature branches**, unless the ignored file is directly related to that feature.
3. **Always commit the change separately**, before merging or creating new branches.

### 💡 Recommended workflow

```bash
# Switch to main
git checkout main

# Pull the latest version
git pull

# Edit .gitignore and save changes
git add .gitignore
git commit -m "chore(gitignore): update ignored files list"
git push
```

After that, any new branches will inherit the updated ignore rules.

### 🧠 Why this matters

If you edit `.gitignore` in another branch, `main` won’t see those rules.
That means files you intended to ignore (like temp code, logs, or drafts) could reappear when switching branches — causing confusion or untracked changes.
