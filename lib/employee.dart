/*
We will create a class to represent an employee in the employee,dart file.
*/
class Employee {
  int _hours = 0;
  double _rate = 0;
  final double _tax = 0.1; // default 10% tax

  Employee(int hours, double rate) {
    if (hours <= 0 || rate <= 0) {
      throw Exception('negative values not allowed');
    }
    _hours = hours;
    _rate = rate;
  }

  double netSalary() {
    return (_hours * _rate) * (1 - _tax);
  }

  @override
  String toString() {
    return """
      Hours: $_hours
      Rate: $_rate
      Tax: ${_tax * 100}%
      Net Salary: ${netSalary()} """;
  }
}