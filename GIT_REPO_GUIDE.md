# 📘 Commit & Branch Naming Guide for _IBM Flutter & Dart Labs Repository_

This guide defines **how to name branches, commits, and tags** in the `flutter-dart-labs` repository.  
It follows the **Conventional Commits** and **Conventional Branches** standards used in professional development workflows, adapted to your course structure.

---

## 🧭 Repository Structure

```

flutter-dart-labs/
├─ COMMITS\_GUIDE.md
├─ GLOSSARY.md
├─ README.md
├─ mini\_exercises/
│  ├─ exercise\_1/
│  ├─ exercise\_2/
│  └─ ...
├─ module1\_introduction/
│  ├─ notes/
│  └─ lab\_hello\_world\_web/
├─ module2\_dart-language/
│  ├─ notes/
│  └─ labs\_variables\_functions\_methods\_Dart/
└─ module3\_flutter\_basics/
├─ notes/
└─ labs/

```

---

## 🌿 Branch Naming Convention (Professional Standard)

Branches are named according to **what type of work you are doing** and **where it applies**.

### ✅ General Format

```

<type>/<scope>-<short-description>

```

- **type** → the kind of work (feature, fix, docs, etc.)
- **scope** → the module, lab, or section affected
- **short-description** → optional, short summary of what’s being done

### 🧱 Common Examples

| Type prefix   | Purpose                                    | Example branch                         |
|----------------|---------------------------------------------|----------------------------------------|
| **feat/**     | New feature, lab, or implementation        | `feat/module2-lab-variables-functions` |
| **fix/**      | Bug or issue fix                           | `fix/module2-lab-variables`            |
| **docs/**     | Documentation (README, notes, glossary)    | `docs/module2-lab-notes`               |
| **refactor/** | Code improvement without functional change | `refactor/module3-lab-widgets`         |
| **chore/**    | Maintenance, config, or dependency updates | `chore/config-update`                  |
| **test/**     | Unit or integration tests                  | `test/module3-lab-ui`                  |
| **perf/**     | Performance improvements                   | `perf/module3-list-rendering`          |

---

### 💡 Why this convention?

- Immediately identifies **what** the branch is about (`feat`, `docs`, etc.)
- Keeps structure modular by linking to **where** (`module2-lab`, `repo`, etc.)
- Matches the same conventions used in most CI/CD pipelines and release tools.

---

## ✍️ Commit Message Format (Conventional Commits)

Each commit message follows the format:

```

<type>(<scope>): <short imperative message>

````

### ✅ Examples

| Example Commit                                                   | Description               |
|------------------------------------------------------------------|---------------------------|
| `feat(module2-lab): implement variables and functions lab`       | Adds a new lab or feature |
| `docs(module2-lab-notes): update README with new Dart exercises` | Documentation updates     |
| `fix(module3-lab): correct error in widget initialization`       | Bug fix                   |
| `refactor(module2-lab): clean up function structure`             | Internal refactor         |
| `chore(repo): update dependencies and analysis options`          | Maintenance               |
| `test(module1-lab): add widget test for Hello World`             | Adds or modifies tests    |

---

### 🧠 Commit Message Rules

- Always write messages in **English**.
- Use **present tense** and **imperative mood** (`add`, `update`, `fix`, not `added`, `fixed`).
- Keep messages **under 100 characters**.
- Use **one commit per logical change** — avoid generic “update” commits.
- Documentation commits (`docs`) should never include code changes.

---

## 🔀 Renaming a Branch (if you made a naming mistake)

If you created a branch and later realized its name doesn’t follow the conventions, you can rename it safely **without losing your changes**.

### 🧩 Case 1: You are currently *on* the branch you want to rename
Just run:
```bash
git branch -m new-branch-name
````

Git automatically renames the current branch; no need to specify the old name.

### 🧩 Case 2: You want to rename a branch while on another one

Specify both:

```bash
git branch -m old-branch-name new-branch-name
```

### 🧩 If the branch has already been pushed to GitHub

You’ll need to delete the old remote reference and push the new one:

```bash
git push origin :old-branch-name
git push -u origin new-branch-name
```

✅ After this, your renamed branch will replace the old one in GitHub, keeping all commits and history intact.

---

## 🏷 Tagging Progress (Modules, Notes, Labs, and Mini-Exercises)

Use **annotated tags** (`-a`, `-m`) to mark progress milestones in your course.

### 🔹 Labs completed

```bash
git tag -a module1-lab1-done -m "Completed Lab 1: Hello World Web"
git push --tags
```

### 🔹 Notes or theoretical sections completed

```bash
git tag -a module2-notes-done -m "Finished Module 2 notes: Variables, Functions, and Libraries in Dart"
git push --tags
```

### 🔹 Mini-Exercises completed

```bash
git tag -a exercise-dart-collections-done -m "Completed Mini-Exercise: Dart Collections practice"
git push --tags
```

### 🔹 Full modules completed

```bash
git tag -a module2-done -m "Completed Module 2: Exploring Dart Language – notes and labs"
git push --tags
```

| Purpose                | Tag Format                   | Example                          |
| ---------------------- | ---------------------------- | -------------------------------- |
| Finished Lab           | `moduleX-labY-done`          | `module2-lab1-done`              |
| Finished Notes         | `moduleX-notes-done`         | `module2-notes-done`             |
| Finished Mini-Exercise | `exercise-<short-name>-done` | `exercise-dart-collections-done` |
| Full Module            | `moduleX-done`               | `module2-done`                   |

---

## 🔁 Example Complete Workflow

```bash
# 1️⃣ Create a branch for the documentation update
git checkout -b docs/repo-guides-update

# 2️⃣ Edit the README or notes
code README.md

# 3️⃣ Stage and commit your changes
git add README.md
git commit -m "docs(repo): fix broken links and update commit guide"

# 4️⃣ Push and open PR
git push -u origin docs/repo-guides-update

# 5️⃣ Merge into main and tag progress
git checkout main
git merge docs/repo-guides-update
git tag -a repo-docs-update -m "Updated README and commit guide"
git push origin main --tags
```

---

## 🧹 General Recommendations

* Keep branches **short-lived and specific**.
* Rebase regularly with `main` before merging.
* Use **Squash Merge** for cleaner history (one commit per feature).
* Keep **code commits separate from docs commits**.
* Always verify formatting with `dart format .` before committing.

---

## ⚙️ Updating `.gitignore`

`.gitignore` changes affect the whole repository.
Edit it **only in `main`** or in a dedicated config branch.

```bash
git checkout -b chore/config-gitignore-update
# edit .gitignore
git add .gitignore
git commit -m "chore(config): update .gitignore to ignore build and cache files"
git push -u origin chore/config-gitignore-update
```

After merging:

```bash
git checkout main
git pull
```

---

✅ **Summary of Conventions**

| Area                | Example                                                |
| ------------------- | ------------------------------------------------------ |
| **Branch naming**   | `docs/repo-guides-update`                              |
| **Commit message**  | `docs(repo): fix broken links and update commit guide` |
| **Tag after merge** | `repo-docs-update`                                     |
| **PR title**        | `[docs] Update global documentation and commit guide`  |
