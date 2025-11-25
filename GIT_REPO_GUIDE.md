# 📘 Guía de Commits & Ramas para _Repositorio de Labs Flutter & Dart_

En esta guía defino **cómo nombrar ramas, commits y tags** en el repositorio `flutter-dart-labs`.
Sigue los estándares **Conventional Commits** y **Conventional Branches** usados en flujos de trabajo profesionales, adaptados a tu estructura del curso.

---

## 🧭 Estructura del Repositorio

```
flutter-dart-labs/
├─ AGENTS.md
├─ GIT_REPO_GUIDE.md
├─ README.md
├─ mini_exercises/
│  ├─ module1_introduction/
│  │  └─ basics_exercise.dart
│  ├─ module2_dart-language/
│  │  ├─ internals_exercise.dart
│  │  ├─ variables_and_types.dart
│  │  ├─ functions_methods_in_dart.dart
│  │  └─ classes_in_dart.dart
│  └─ module3_working-with-flutter/
│     ├─ flutter_widgets_dart/
│     └─ navigation_in_flutter/
├─ labs/
│  ├─ module1_introduction/
│  │  └─ lab_hello_world_web/
│  └─ module2_dart-language/
│     ├─ lab_variables_functions_methods_Dart/
│     ├─ lab_libraries_in_dart/
│     └─ lab_debugging_dart_app/
├─ Module1_Introduction/
│  └─ notes/
├─ Module2_Dart-language/
│  └─ notes/
├─ Module3_Working-with-Flutter/
│  └─ notes/
└─ assets/
```

---

## 🌿 Convención de Nombres de Ramas (Estándar Profesional)

Las ramas se nombran según **el tipo de trabajo** y **dónde aplica**.

### ✅ Formato General

```
<tipo>/<área>-<descripción-corta>
```

- **type** → tipo de trabajo (feature, fix, docs, etc.)
- **scope** → módulo, lab o sección afectada
- **short-description** → opcional, breve resumen

### 🧱 Ejemplos Comunes

| Prefijo       | Propósito                                | Ejemplo de rama                        |
| ------------- | ---------------------------------------- | -------------------------------------- |
| **feat/**     | Nueva funcionalidad o lab                | `feat/module2-lab-variables-functions` |
| **fix/**      | Corrección de errores                    | `fix/module2-lab-variables`            |
| **docs/**     | Documentación (README, notas, glosario)  | `docs/module2-lab-notes`               |
| **refactor/** | Mejora interna sin cambiar funcionalidad | `refactor/module3-lab-widgets`         |
| **chore/**    | Mantenimiento / dependencias             | `chore/config-update`                  |
| **test/**     | Tests                                    | `test/module3-lab-ui`                  |
| **perf/**     | Optimización de rendimiento              | `perf/module3-list-rendering`          |

---

### 💡 ¿Por qué esta convención?

- Identifica **qué** es (`feat`, `docs`, etc.)
- Indica **dónde** (e.g., `module2-lab`)
- Coincide con los estándares profesionales y CI/CD

---

## ✍️ Formato de Mensajes de Commit (Conventional Commits)

Formato del commit:

```
<type>(<scope>): <mensaje corto en imperativo>
```

### ✅ Ejemplos

| Commit                                                           | Descripción         |
| ---------------------------------------------------------------- | ------------------- |
| `feat(module2-lab): implement variables and functions lab`       | Nuevo lab o feature |
| `docs(module2-lab-notes): update README with new Dart exercises` | Documentación       |
| `fix(module3-lab): correct error in widget initialization`       | Corrección          |
| `refactor(module2-lab): clean up function structure`             | Refactor interno    |
| `chore(repo): update dependencies and analysis options`          | Mantenimiento       |
| `test(module1-lab): add widget test for Hello World`             | Tests               |

---

### 🧠 Reglas para Mensajes de Commit

- Siempre escribir en **inglés**
- **Presente e imperativo** (`add`, `fix`, `update`)
- < **100 caracteres**
- Un cambio lógico por commit
- Commits de docs no mezclan código

---

### ✅ Borrar ramas después de hacer merge (limpio)

**1️⃣ Borrar rama local**

```bash
git branch -d your-branch-name
```

Forzar si no está mergeada:

```bash
git branch -D your-branch-name
```

**2️⃣ Borrar rama remota**

```bash
git push origin --delete your-branch-name
```

**3️⃣ Verificar**

```bash
git branch
git branch -r
```

> Extra para pulcritud:  
> Cuando se hace merge en GitHub y luego elimino las ramas allí, en local todavía quedan remote-tracking branches (origin/rama_eliminada). Para dejar el repo limpio, debo hacer:

```bash
git fetch --prune
```

Esto elimina las ramas remotas que ya no existen en GitHub de la vista local (origin/...).  
--prune = borra las referencias locales a ramas remotas eliminadas.

---

## 🔁 Notas Avanzadas de Workflow

### ✅ Renombres + trabajo paralelo

Si nombro carpetas/archivos en una rama y luego edito en otras ramas:

**Flujo recomendado:**

```bash
git checkout main
git pull
git checkout your-branch
git rebase main
```

Si salen duplicados, limpiarlos en rama aparte:

```bash
git checkout -b chore/cleanup-duplicates
rm -rf old_folder_name
rm old_filename
git add .
git commit -m "chore(module2): remove leftover old folder after rename"
git push -u origin chore/cleanup-duplicates
```

> No borrar manualmente en `main`

---

## 🧹 Recomendaciones Generales

- Ramas **cortas y específicas**
- Rebase antes de mergear
- Usar **Squash Merge**
- Separar código de documentación
- Formatear antes de commit:

```bash
dart format .
```

- Después de mergear:

```bash
git checkout main
git pull
```

---

## ✅ Resumen

| Área        | Ejemplo                              |
| ----------- | ------------------------------------ |
| Nombre rama | `docs/module2-notes-add-cli-md`      |
| Commit      | `docs(module2-notes): add CLI notes` |
| Tag         | `module2-notes-done`                 |
| PR          | `[docs] Add CLI notes for module2`   |

---

## 🔀 Renombrar ramas sin perder cambios

### Si estoy en la rama:

```bash
git branch -m new-branch-name
```

### Si estoy en otra rama:

```bash
git branch -m old-branch-name new-branch-name
```

### Si ya estaba subida a GitHub:

```bash
git push origin :old-branch-name
git push -u origin new-branch-name
```

---

## 🏷 Etiquetar Progreso (Tags)

### Labs completados

```bash
git tag -a module1-lab1-done -m "Completed Lab 1: Hello World Web"
git push --tags
```

### Notas completadas

```bash
git tag -a module2-notes-done -m "Finished Module 2 notes"
git push --tags
```

### Mini-ejercicios

```bash
git tag -a exercise-dart-collections-done -m "Completed Dart collections exercise"
git push --tags
```

### Módulo completo

```bash
git tag -a module2-done -m "Completed Module 2"
git push --tags
```

| Propósito         | Formato              | Ejemplo                          |
| ----------------- | -------------------- | -------------------------------- |
| Lab finalizado    | `moduleX-labY-done`  | `module2-lab1-done`              |
| Notas finalizadas | `moduleX-notes-done` | `module2-notes-done`             |
| Ejercicio         | `exercise-name-done` | `exercise-dart-collections-done` |
| Módulo completo   | `moduleX-done`       | `module2-done`                   |

---

## 🔁 Ejemplo de Workflow Completo

```bash
git checkout -b docs/repo-guides-update
code README.md
git add README.md
git commit -m "docs(repo): fix broken links and update commit guide"
git push -u origin docs/repo-guides-update

git checkout main
git merge docs/repo-guides-update
git tag -a repo-docs-update -m "Updated README and commit guide"
git push origin main --tags
```

---

## ⚙️ Actualizar `.gitignore`

Hacerlo en `main` o rama dedicada:

```bash
git checkout -b chore/config-gitignore-update
# edit .gitignore
git add .gitignore
git commit -m "chore(config): update .gitignore"
git push -u origin chore/config-gitignore-update
```

Después del merge:

```bash
git checkout main
git pull
```

---

## ✅ Resumen Final

| Área   | Ejemplo                                                |
| ------ | ------------------------------------------------------ |
| Rama   | `docs/repo-guides-update`                              |
| Commit | `docs(repo): fix broken links and update commit guide` |
| Tag    | `repo-docs-update`                                     |
| PR     | `[docs] Update global documentation and commit guide`  |

Perfecto 👌 Aquí tienes tu **GIT_REPO_GUIDE.md** actualizado — sin quitar **nada** de lo que ya tenías, solo **añadiendo una nueva sección** con la explicación profesional sobre commits de documentación dentro de ramas `feat/...`, tal como me pediste.

---

## 🧩 💬 Buenas prácticas al incluir commits de documentación (`docs:`) dentro de ramas `feat/...`

En entornos profesionales (y en este repositorio también), es totalmente correcto realizar **commits de tipo `docs:`** dentro de una **rama de tipo `feat/`** si la documentación está **directamente relacionada con esa misma funcionalidad o mini-proyecto**.

Esto mantiene una historia de cambios coherente, facilita la trazabilidad y evita crear ramas innecesarias.

### ✅ Reglas y ejemplos

- No es necesario crear una rama separada (`docs/...`) si el cambio de documentación forma parte del desarrollo actual de una feature.
- Los commits deben seguir el mismo formato convencional:

```bash
git commit -m "docs(readme): agregar instrucciones para abrir el módulo correctamente"
```

- Si el cambio de documentación afecta únicamente al contexto del mismo miniproyecto o módulo, se mantiene en la rama `feat/...` activa.
- Solo se crea una rama `docs/...` independiente si:

  - El cambio de documentación es **global** (por ejemplo, actualizar la guía general del repo o los README de varios módulos).
  - O si el equipo exige revisiones de documentación por separado (casos poco comunes).

### 💡 Ejemplo de flujo correcto

```bash
# Rama de desarrollo de una nueva feature
git checkout -b feat/mini-exercise-6-widgets

# Commits dentro de la misma rama
git commit -m "feat(main): crear estructura inicial de la app de widgets"
git commit -m "feat(ui): implementar navegación y secciones básicas"
git commit -m "docs(readme): agregar instrucciones para abrir el módulo correctamente"
git commit -m "chore(clean): eliminar archivos generados por error"

# Merge final o Pull Request
git push -u origin feat/mini-exercise-6-widgets
```

📘 Resultado: todos los commits de código y documentación se agrupan bajo una sola rama de desarrollo (`feat/...`), manteniendo una historia clara, limpia y profesional.

---
