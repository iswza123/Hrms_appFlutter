import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/employee.dart';
import '../providers/employee_provider.dart';

class EditEmployeeScreen extends StatefulWidget {
  final Employee employee;
  const EditEmployeeScreen({super.key, required this.employee});

  @override
  State<EditEmployeeScreen> createState() => _EditEmployeeScreenState();
}

class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController phone;
  late TextEditingController department;
  late TextEditingController designation;

  @override
  void initState() {
    super.initState();
    phone = TextEditingController(text: widget.employee.phone);
    department = TextEditingController(text: widget.employee.department);
    designation = TextEditingController(text: widget.employee.designation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Employee')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _field(phone, 'Phone Number'),
                  _field(department, 'Department'),
                  _field(designation, 'Designation'),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Save Changes'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          widget.employee.phone = phone.text;
                          widget.employee.department = department.text;
                          widget.employee.designation = designation.text;
                          context.read<EmployeeProvider>().updateEmployee(widget.employee);
                          Navigator.popUntil(context, (route) => route.isFirst);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _field(TextEditingController c, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: c,
        decoration: InputDecoration(labelText: label),
        validator: (v) => v == null || v.isEmpty ? 'Required' : null,
      ),
    );
  }
}
