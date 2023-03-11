import 'package:vialika_admin/vialika/model/location.dart';

class User{
  int id = 0;
  String name = "";
  String email = "";
  String phoneNumber = "";
  List<int> vehicleIds = [];
  Location? location;

  User({this.id=0, this.name="", this.email="", this.phoneNumber="", this.vehicleIds =const [], this.location});
}

User currentUser = User(
  id: 0, 
  name: "David Plazer", 
  email: "dplazer@kipustec.com",
  phoneNumber: "52 1 55 8100 1070", 
  vehicleIds:[23,24,25],
  location: Location(
    city: "Ciudad de México",
    state: "Ciudad de México",
    country: "Mexico",
    latitude: 0,
    longitude: 0,
    literalLocation: "Mi dirección",
  )
);