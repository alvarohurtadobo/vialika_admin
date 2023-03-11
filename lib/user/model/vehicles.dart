
class Vehicle{
  int id = 0;
  String plateNumber = "";
  String ownerName = "";
  String driverName = "";
  String model = "";
  DateTime? creationDate;

  Vehicle({this.id=0, this.plateNumber="", this.ownerName="", this.driverName="", this.model="", this.creationDate});
}

List<Vehicle> myVehicles = [
  Vehicle(
    id: 23,
    plateNumber: "244SYLE",
    driverName: "Felipe Méndez",
    model: "Toyota",
    ownerName: "David Plazer"
  ),
  Vehicle(
    id: 24,
    plateNumber: "2564BBI",
    driverName: "David Plazer",
    model: "Suzuki",
    ownerName: "David Plazer"
  ),
  Vehicle(
    id: 25,
    plateNumber: "958UABE",
    driverName: "Felipe Méndez",
    model: "Quantum Bolivia",
    ownerName: "David Plazer"
  ),
];