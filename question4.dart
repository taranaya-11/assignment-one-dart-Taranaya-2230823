abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start();
  void stop();

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  int age(int currentYear) => currentYear - year;
}

class Car extends Vehicle {
  int numberOfDoors;
  Car(String brand, String model, int year, this.numberOfDoors) : super(brand, model, year);

  @override
  void start() => print("Starting the car engine...");
  @override
  void stop() => print("Stopping the car engine...");

  @override
  void displayInfo() => print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
}

class Motorcycle extends Vehicle {
  bool hasWindshield;
  Motorcycle(String brand, String model, int year, this.hasWindshield) : super(brand, model, year);

  @override
  void start() => print("Starting the motorcycle engine...");
  @override
  void stop() => print("Stopping the motorcycle engine...");

  @override
  void displayInfo() => print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
}

void main() {
  var car = Car("Toyota", "Camry", 2020, 4);
  var moto = Motorcycle("Honda", "CBR", 2021, true);

  List<Vehicle> vehicles = [car, moto];

  for (var v in vehicles) {
    v.displayInfo();
    v.start();
    v.stop();
    print("");
  }
  print("Car age: ${car.age(2024)} years");
  print("Motorcycle age: ${moto.age(2024)} years");
}
