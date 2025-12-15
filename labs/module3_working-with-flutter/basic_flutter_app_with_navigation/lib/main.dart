import 'package:flutter/material.dart';
// Here we are going to import de second screen...
import 'second_screen.dart';

// The main function is the entry point for every Dart application
void main() {
  // runApp takes the provided widget (MyApp) and makes it the root of the widget
  // tree
  runApp(const MyApp());
}

// stateless widget named MyApp
// MyApp is a custom widget that extends StatelessWidget, which is used when the
// widget doesn't manage any state of its own.
class MyApp extends StatelessWidget {
  // const constructor is used here to indicate that MyApp is immutable
  const MyApp({super.key});
  // build method describes how to display the widget in the app
  // The context parameter provides information about the location of this widget
  // in the widget tree.
  @override
  Widget build(BuildContext context) {
    // Adding the MaterialApp widget to the build method to start building the app
    // MaterialApp is a convenience widget that wraps several commonly used widgets
    // to design a material app.
    return MaterialApp(
      title: 'Basic Flutter App with Navigation',
      debugShowCheckedModeBanner: false,
      // initialRoute defines the default route for the app.
      initialRoute: '/',
      // routes is a map of route names to the corresponding widget builders.
      // The route to the second screen is commented out as we haven't created
      // that screen yet.
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _selectedGender = 'Male';
  // Helper method to calculate age from date of birth
  int _calculateAge(DateTime birthDate) {
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Registration')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // field text with validation support
              // Name field
              TextFormField(
                // Vinculate the text to _nameController to retrieve the value later
                controller: _nameController,
                // decoration adds a label to the text field
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  // simple validation to check if the field is empty
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  // if the input is valid, return null
                  return null;
                },
              ),
              // Age field
              TextFormField(
                // controller for age input
                controller: _ageController,
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                // validation for age input
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  final parsedAge = int.tryParse(value);
                  if (parsedAge == null) {
                    return 'Please enter a valid number';
                  }
                  // check if the age matches the date of birth
                  final expectedAge = _calculateAge(_selectedDate);
                  if (parsedAge != expectedAge) {
                    return 'Age does not match date of birth ($expectedAge)';
                  }
                  return null;
                },
              ),
              // Date of Birth field with date picker
              ListTile(
                title: const Text('Date of Birth'),
                // subtitle shows the selected date
                subtitle: Text(
                  // format the date to a readable string: YYYY-MM-DD
                  _selectedDate.toLocal().toString().split(' ')[0],
                ),
                trailing: const Icon(Icons.calendar_today),
                // onTap opens the date picker dialog
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    // date picker initial date is the currently selected date
                    initialDate: _selectedDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  // if a date is picked and it's different from the current
                  // selected date, update the state
                  if (picked != null && picked != _selectedDate) {
                    setState(() {
                      _selectedDate = picked;
                    });
                  }
                },
              ),
              // dropdown for gender selection
              DropdownButtonFormField<String>(
                value: _selectedGender,
                decoration: const InputDecoration(labelText: 'Gender'),
                items: ['Male', 'Female', 'Other']
                    // convert each string in the list to a DropdownMenuItem
                    .map(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedGender = newValue!;
                  });
                },
              ),
              // spacing and register button
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // run validation and if valid, navigate to the second screen
                  if (_formKey.currentState!.validate()) {
                    // Process data

                    Navigator.pushNamed(
                      context,
                      '/second',
                      // Passing the form data as arguments to the second screen
                      arguments: {
                        'name': _nameController.text,
                        'age': _ageController.text,
                        'dateOfBirth': _selectedDate,
                        'gender': _selectedGender,
                      },
                    );
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
