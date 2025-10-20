# 📘 Commit Guide for _IBM Flutter & Dart Labs Repository_

This guide defines **how to name branches, commits, and tags** for every lab or module in your `flutter-dart-labs` project.
It follows **Conventional Commits**, adapted to your course structure and workflow.

---

## 🧭 Repository Structure

```
flutter-dart-labs/
├─ COMMITS_GUIDE.md
├─ mini_exercises/
├─ module1_introduction/
│  └─ lab_hello_world_web/
│     ├─ lib/
│     ├─ pubspec.yaml
│     └─ README.md
├─ module2_dart-language/
│  ├─ labs/
│  ├─ notes/
│  ├─ pubspec.yaml
│  └─ README.md
└─ notes/
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

---

## 🏷 Tags for Completed Labs

When a Lab is finished and merged into `main`, tag it for easy tracking:

```
git tag module1-lab1-done
git push origin module1-lab1-done
```

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
