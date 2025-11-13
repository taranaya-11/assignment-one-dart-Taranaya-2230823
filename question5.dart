mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("${getJobTitle()}: $name (ID: $id, Department: $department)");
    print("Base Salary: ${getBaseSalary()}");
  }
}

class Manager extends Employee with Payable, Reportable {
  int teamSize;
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;
}

class Developer extends Employee with Payable {
  String programmingLanguage;
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);

  @override
  String getJobTitle() => "Senior Developer";

  @override
  double getBaseSalary() => 6000.0;
}

void main() {
  var manager = Manager("John Smith", "M001", "IT", 5);
  var dev = Developer("Alice Johnson", "D001", "IT", "Dart");

  manager.displayInfo();
  double mSalary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
  print("Calculated Salary: $mSalary");
  manager.processPayment(mSalary);
  print("Report: ${manager.generateReport(manager.name, manager.department)}");
  print("");

  dev.displayInfo();
  double dSalary = dev.calculateSalary(dev.getBaseSalary(), 500.0);
  print("Calculated Salary: $dSalary");
  dev.processPayment(dSalary);
}
