import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeProvider extends ChangeNotifier {
  final List<Employee> _employees = [
    Employee(
      id: 101,
      name: "Aadhitya",
      designation: "Flutter Developer",
      department: "IT",
      phone: "9876543210",
    ),
    Employee(
      id: 102,
      name: "Ashly merry",
      designation: "HR Manager",
      department: "HR",
      phone: "9123456789",
    ),
    Employee(
      id: 103,
      name: "Zubaida wazeea",
      designation: "UI/UX Designer",
      department: "Design",
      phone: "9988776655",
    ),
  ];

  List<Employee> get employees => [..._employees];

  void updateEmployee(Employee updated) {
    final index = _employees.indexWhere((e) => e.id == updated.id);
    if (index != -1) {
      _employees[index] = updated;
      notifyListeners();
    }
  }
}
