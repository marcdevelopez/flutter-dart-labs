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

// Priority constants (these will help with filters during development)
const String highPriority = 'high';
const String mediumPriority = 'medium';
const String lowPriority = 'low';

// Main function
void main() {
  print('\n\n===== TASK MANAGER FOR MOBILE DEVELOPERS =====\n\n');

  // Create task list using different parameter types in functions
  // without forgetting the required ones.
  // Each task will be created within the list using the createTask function:
  final tasks = [
    // TODO tasks created with createTask() go here, which are Maps that
    // will represent each task in the List
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

  // Print all tasks
  print('--- All Tasks ---\n');
  printTasks(tasks);

  // Filter tasks and display statistics
  // Let's test filtering with a closure
  // We use where to filter the task list, which is why the
  // createPriorityFilter function returns a boolean indicating if the task meets
  // the priority criteria
  final highPriorityTasks = tasks
      .where(createPriorityFilter(highPriority))
      .toList();
  print('--- High Priority Tasks ---\n');
  printTasks(highPriorityTasks);

  // Print some task statistics using another function
  printTaskStatistics(tasks);

  // Simulate receiving remote tasks
  print('\n-- Fetching Remote Tasks... ---');
  // This time we use .then instead of async/await to demonstrate another way
  // to handle asynchronous functions. The difference is that with async/await
  // the code is more sequential and easier to read, while with .then
  // callbacks are used and multiple operations can be chained more easily
  Map<String, dynamic> remoteTasks = {};
  fetchRemoteTasks().then((remoteTasks) {
    print('\n--- Remote Tasks Fetched ---\n');
    printTasks(remoteTasks);

    // Print the workload by assignee
    // First we combine local and remote tasks with the spread operator (...)
    final allTask = [...tasks, ...remoteTasks];
    // And now we calculate and print the workload by assignee
    calculateWorkloadDistribution(allTask);
  });
}

// Function to make priority more visual when printing using an arrow function
String getPrioritySymbol(String priority) => priority == highPriority
    ? '🔴'
    : priority == mediumPriority
    ? '🟡'
    : '🟢';

// Function to print tasks in a clear and formatted way
void printTasks(List<Map<String, dynamic>> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
    return;
  }

  // By using final task within the for loop, memory is saved and performance
  // is improved, as it's not necessary to allocate additional memory in each
  // iteration.
  // In this function, we choose which task data we want to print
  for (final task in tasks) {
    final priority = task['priority'];
    final title = task['title'];
    // This variable can be null, so we use the ?? operator to assign
    // a default value in case it is null
    final assignee = task['assignee'] ?? 'Unassigned';
    // This variable has a default value of 1.0
    final estimatedHours = task['estimatedHours'];
    // Now we use the priority value to get the symbol
    final symbol = getPrioritySymbol(priority);

    // Finally with all the data we print the task
    print(
      '  $symbol $title${assignee != 'Unassigned' ? ' (assignee: $assignee)' : ''}, estimated hours: $estimatedHours hrs\n',
    );
  }
  print('\n');
}

// Function to create a task with named parameters, some with default values.
// Returns a Map with dynamic value to allow different data types.
Map<String, dynamic> createTask({
  required String title,
  required String priority,
  required bool completed,
  double estimatedHours =
      1.0, // this parameter is optional and has a default value
  String? assignee, // this parameter is optional and can be null
  List<String>? tags, // this parameter is optional and can be null
}) {
  // Generate a unique ID for the task based on the current timestamp
  final id = 'task_${DateTime.now().millisecondsSinceEpoch}';

  return {
    // fill the map with the task data
    'id': id,
    'title': title,
    'priority': priority,
    'completed': false, // the default value will be false
    'estimatedHours': estimatedHours,
    'assignee': assignee,
    'tags': tags ?? [], // if tags is null, assign an empty list
    // creation date in ISO 8601 format for easier reading:
    'createdAt': DateTime.now().toIso8601String(),
  };
}

/// FILTERS using CLOSURES

// Priority filter: this function will be customized according to the priority
// passed as a parameter and will return a function that can be used
// to filter tasks
bool Function(Map<String, dynamic>) createPriorityFilter(String priority) {
  return (Map<String, dynamic> task) => task['priority'] == priority;
}

// Tags filter: this function will be customized according to the tag
// passed as a parameter and will return a function that can be used
// to filter tasks
bool Function(Map<String, dynamic>) createTagFilter(String tag) {
  return (Map<String, dynamic> task) => (task['tags'] as List).contains(tag);
}

/// STATISTICS
// In this function we count the total tasks and estimated hours, as well as
// counting how many tasks there are of each priority
void printTaskStatistics(List<Map<String, dynamic>> tasks) {
  // To sum all hours we use fold, which is a function that traverses
  // the entire list and accumulates a value, in this case the total hours
  final totalHours = tasks.fold(
    0.0,
    (sum, tarea) => sum + (tarea['estimatedHours'] as double),
  );
  // To count tasks by priority we use where, which filters the list
  // according to the criteria we pass, and then we count the length of the
  // resulting list with length
  final high = tasks.where((taskEntry) => taskEntry['priority'] == highPriority).length;
  final medium = tasks
      .where((tarea) => tarea['priority'] == mediumPriority)
      .length;
  final low = tasks.where((tarea) => tarea['priority'] == lowPriority).length;

  // We print, using String interpolation again
  print('--- Task Statistics ---\n');
  print('   Total Tasks: ${tasks.length}\n');
  // toStringAsFixed(1) forces it to be displayed with one decimal place
  print('   Total Hours: ${totalHours.toStringAsFixed(1)}\n');
  print('   🔴 High: $high, 🟡 Medium: $medium, 🟢 Low: $low');
  print('\n');
}

// We simulate receiving remote tasks by creating them in an asynchronous function
Future<List<Map<String, dynamic>>> fetchRemoteTasks() {
  // We simulate a 2-second delay
  return Future.delayed(Duration(seconds: 2), () {
    return [
      createTask(
        title: 'Optimize performance',
        priority: highPriority,
        completed: true,
        assignee: 'Alice',
        estimatedHours: 6.0,
        tags: ['performance'],
      ),
      createTask(
        title: 'Add analitics',
        priority: mediumPriority,
        completed: false,
        assignee: 'Roman',
      ),
    ];
  });
}

// We calculate the workload for each assignee
// We'll use the optional positional parameter to allow filtering by
// assignee if desired
void calculateWorkloadDistribution(
  List<Map<String, dynamic>> tasks, [
  bool printDetails = true, // This is optional but if not passed it will be true
]) {
  final Map<String, double> workload = {};
  for (var task in tasks) {
    final who = task['assignee'] ?? 'Unassigned';
    final hours = task['estimatedHours'] as double;
    workload[who] = (workload[who] ?? 0) + hours;
  }

  if (printDetails) {
    print('\--- Workload Distribution ---\n');
    workload.forEach(
      (dev, hrs) => print('   $dev: ${hrs.toStringAsFixed(1)} hours'),
    );
    print('\n');
  }
}
