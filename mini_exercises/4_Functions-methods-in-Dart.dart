/*
 * Mobile Developer Task Manager
 * ============================
 *
 * This program simulates how a mobile development team might manage tasks.
 * It's a "Task Manager for Mobile Developers" written in Dart.
 * The goal is to model, organize, and analyze development tasks as if you were
 * part of a technical team (e.g., in a team using Flutter).
 *
 * Features:
 * ---------
 * - Models tasks:
 *   • Each task has: title, priority, estimated hours, assignee (optional),
 *     tags (optional), status, and creation date
 *
 * - Allows creating tasks with different levels of information:
 *   • Some tasks have just title and priority
 *   • Others include assignee, tags, or estimated duration
 *
 * - Prints all tasks in a clear, formatted way
 *
 * - Uses closures for filtering:
 *   • By priority (high, medium, low)
 *   • By tags (performance, docs, etc.)
 *
 * - Calculates statistics:
 *   • Number of tasks by type
 *   • Total work hours across all tasks
 *
 * - Simulates receiving remote tasks (as from a server):
 *   • Uses an asynchronous function (Future.delayed) to simulate
 *     waiting for a response
 *   • Adds those tasks to the local ones
 *
 * - Calculates workload per person:
 *   • Sums up how many hours each developer has assigned
 *
 * Example:
 * --------
 * Imagine you're part of a mobile dev team. You receive tasks with varying
 * levels of detail. Some are just quick notes (title + priority), while
 * others are more detailed, including who should do them and how long they
 * might take. You want to keep track of all these tasks, filter them based on
 * certain criteria (like priority or tags), and get a sense of how much work
 * is on everyone's plate. This program helps you do all of that.
 *
 * Usage:
 * ------
 * 1. Define your tasks using the provided model.
 * 2. Use the closure filters to narrow down tasks as needed.
 * 3. Generate statistics to understand your task distribution and
 *    workload.
 * 4. (Optional) Simulate receiving new tasks and see how they integrate
 *    into your current list.
 * 5. Assign tasks to team members and estimate completion times to plan
 *    your sprints or development cycles.
 *
 * Note:
 * -----
 * This is a simplified simulation. In a real-world scenario, you'd have
 * more complexities, like task dependencies, varying developer speeds,
 * and integration with other tools. However, this program provides a solid
 * foundation to understand and manage your mobile development tasks.
 */

// Constantes para prioridades (estas ayudaran en los filtros al desarrollar)
const String highPriority = 'high';
const String mediumPriority = 'medium';
const String lowPriority = 'low';

// Funcion principal
void main() {
  print('\n\n===== TASK MANAGER FOR MOBILE DEVELOPERS =====\n\n');

  // Crear lista de tareas (tasks) usando diferentes tipos de parametros en las
  // funciones sin olvidar los obligatorios.
  // Cada tarea sera creada dentro de la lista usando la funcion createTask:
  final tasks = [
    // TODO aqui van las tareas creadas con createTask(), las cuales son Maps que
    // sera cada tarea de la List
    createTask(
      title: 'Fix UI bug in profile screen',
      priority: highPriority,
      completed: false,
      estimatedHours: 3.5,
    ),
    createTask(
      title: 'Implement authentication flow',
      priority: highPriority,
      completed: false,
      estimatedHours: 5.0,
      assignee: 'Alice',
    ),
    createTask(
      title: 'Code review PR #42',
      priority: mediumPriority,
      completed: false,
    ),
    createTask(
      title: 'Update project documentation',
      priority: lowPriority,
      completed: false,
      tags: ['docs', 'maintenance'],
    ),
    createTask(
      title: 'Refactor networking code',
      priority: mediumPriority,
      completed: false,
      estimatedHours: 4.0,
      assignee: 'Bob',
      tags: ['performance', 'backend'],
    ),
  ];

  // Imprimir todas las tareas
  print('--- All Tasks ---\n');
  printTasks(tasks);

  // Filtar tareas y mostrar estadisticas
  // Vamos a hacer una prueba filtrando con un closure
  // Utilizamos where para filtrar la lista de tareas, por eso la funcion
  // createPriorityFilter devuelve un boolean que indica si la tarea cumple con
  // el criterio de prioridad.
  final highPriorityTasks = tasks
      .where(createPriorityFilter(highPriority))
      .toList();
  print('\n--- High Priority Tasks ---\n');
  printTasks(highPriorityTasks);

  // Imprimimos algunas estadisticas de tareas usando otra funcion
  printTaskStatistics(tasks);
}

// Funcion para hacer mas grafico la prioridad al imprimir usando una funcion flecha
String getPrioritySymbol(String priority) => priority == highPriority
    ? '🔴'
    : priority == mediumPriority
    ? '🟡'
    : '🟢';

// Funcion para imprimir las tareas de forma clara y formateada
void printTasks(List<Map<String, dynamic>> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
    return;
  }

  // Al hacer final task dentro del bucle for, se ahorra memoria y se mejora
  // el rendimiento, ya que no es necesario reservar memoria adicional en cada
  // iteracion.
  // En esta funcion elegimos que datos queremos imprimir de cada tarea.
  for (final task in tasks) {
    final priority = task['priority'];
    final title = task['title'];
    // Esta variable puede ser nula, por eso usamos el operador ?? para asignar
    // un valor por defecto en caso de que sea nula.
    final assignee = task['assignee'] ?? 'Unassigned';
    // Esta variable tiene un valor por defecto que es 1.0
    final estimatedHours = task['estimatedHours'];
    // Ahora usamos el valor de prioridad para obtener el simbolo
    final symbol = getPrioritySymbol(priority);

    // Finalmente con todos los datos imprimimos la tarea
    print(
      '  $symbol $title${assignee != 'Unassigned' ? ' (assignee: $assignee)' : ''}, estimated hours: $estimatedHours hrs\n',
    );
  }
  print('\n');
}

// Función para crear una tarea con parámetros nombrados, algunos con valores por defecto.
// Devuelve un Map con el valor dinámico para permitir diferentes tipos de datos.
Map<String, dynamic> createTask({
  required String title,
  required String priority,
  required bool completed,
  double estimatedHours =
      1.0, // este parámetro es opcional y tiene un valor por defecto
  String? assignee, // este parámetro es opcional y puede ser nulo
  List<String>? tags, // este parámetro es opcional y puede ser nulo
}) {
  // Generar un ID único para la tarea basado en la marca de tiempo actual
  final id = 'task_${DateTime.now().millisecondsSinceEpoch}';

  return {
    // rellenamos el mapa con los datos de la tarea
    'id': id,
    'title': title,
    'priority': priority,
    'completed': false, // el valor por defecto sera false
    'estimatedHours': estimatedHours,
    'assignee': assignee,
    'tags': tags ?? [], // si tags es nulo, asignamos una lista vacía
    // fecha de creación en formato ISO 8601 para facilitar su lectura:
    'createdAt': DateTime.now().toIso8601String(),
  };
}

/// FILTROS usando CLOSURES

// Filtro por prioridad:  esta funcion se personalizara segun la prioridad
// que se le pase como parametro y devolvera una funcion que podra ser usada
// para filtrar las tareas.
bool Function(Map<String, dynamic>) createPriorityFilter(String priority) {
  return (Map<String, dynamic> task) => task['priority'] == priority;
}

// Filtro por tags: esta funcion se personalizara segun el tag que se le pase
// como parametro y devolvera una funcion que podra ser usada para filtrar
// las tareas.
bool Function(Map<String, dynamic>) createTagFilter(String tag) {
  return (Map<String, dynamic> task) => (task['tags'] as List).contains(tag);
}

/// ESTADISTICAS
// En esta funcion contamos el total de tareas y horas estimadas, ademas de
// contar cuantas tareas hay de cada prioridad.
void printTaskStatistics(List<Map<String, dynamic>> tasks) {
  // Para sumar todas las horas usamos fold, que es una funcion que recorre
  // toda la lista y va acumulando un valor, en este caso el total de horas.
  final totalHours = tasks.fold(
    0.0,
    (sum, tarea) => sum + (tarea['estimatedHours'] as double),
  );
  // para sumar las tareas por prioridad usamnos where, que filtra la lista
  // segun el criterio que le pasemos, y luego contamos la longitud de la
  // lista resultante con length.
  final high = tasks.where((tarea) => tarea['priority'] == highPriority).length;
  final medium = tasks
      .where((tarea) => tarea['priority'] == mediumPriority)
      .length;
  final low = tasks.where((tarea) => tarea['priority'] == lowPriority).length;
  
  // Imprimimos, volviendo a usar interpolacion de Strings
  print('--- Task Statistics ---');
  print('.  Total Tasks: ${tasks.length}');
  // toStringAsFixed(1) fuerza a que se muestre con un decimal
  print('.  Total Hours: ${totalHours.toStringAsFixed(1)}');
  print('.  🔴 High: $high, 🟡 Medium: $medium, 🟢 Low: $low');
  print('\n');
}
