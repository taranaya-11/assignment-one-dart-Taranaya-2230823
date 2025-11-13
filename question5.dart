mixin Reportable {
}

class Manager with Reportable {

  String getJobTitle() {
    return 'Manager'; 
  }

  double getBaseSalary() {
    return 8000.0; 
  }
}

void main() {
}
