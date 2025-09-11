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
const String HIGH = 'high';
const String MEDIUM = 'medium';
const String LOW = 'low';

// Funcion principal
void main() {
  print('===== TASK MANAGER FOR MOBILE DEVELOPERS =====\n');

  // TODO: Crear lista de tareas (tasks)
  // TODO: Imprimir todas las tareas
  // TODO: Filtar tareas y mostrar estadisticas

}

// Función para crear una tarea con parámetros nombrados, algunos con valores por defecto.
// Devuelve un Map con el valor dinámico para permitir diferentes tipos de datos.
Map<String, dynamic> createTask({
  required String title,
  required String priority,
  required bool completed, // este parámetro es opcional y tiene un valor por defecto
  double estimatedHours = 1.0, // este parámetro es opcional y tiene un valor por defecto
  String? assignee, // este parámetro es opcional y puede ser nulo
  List<String>? tags, // este parámetro es opcional y puede ser nulo
}
) {
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
  }
}