

import 'package:vialika_admin/vialika/model/location.dart';

class Infringement {
  int id = 0;
  String plateNumber = "";
  int authorId = 0;
  String type = "";
  String subtype = "";
  String highResolutionImageUrl = "";
  String croppedImageUrl = "";
  String videoUrl = "";
  String gifUrl = "";
  DateTime? datetime;
  Location? location;

  Infringement({this.id =0, this.plateNumber="", this.authorId=0, this.type="", this.subtype="", this.croppedImageUrl="", this.highResolutionImageUrl="", this.gifUrl="", this.videoUrl="", this.datetime, this.location});
}

List<Infringement> myInfringements = [
  Infringement(
    id: 1234,
    plateNumber: "958UABE",
    authorId: 0,
    type: "Violación a semáforo",
    subtype: "Cruce en Rojo",
    croppedImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190801_123509_38_1_crop_plate.jpg?alt=media&token=29ab41f2-e1a7-465c-8e5c-30c80ddb238d",
    highResolutionImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190801_123509_38_1.jpg?alt=media&token=eb8b27fa-1d3e-423f-8eb4-625949313789",
    gifUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fgifs%2F20190801-123506-93.gif?alt=media&token=3bc18762-1a3a-44af-b42a-5eeaa83052df",
    videoUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fvideos%2F20190801_123506_93.mp4?alt=media&token=abf375cb-51f1-47dd-a1a0-ae1c89088a46",
    datetime: DateTime(2019,8,1,12,35,6),
    location: Location(
      city: "Oruro",
      state: "Oruro",
      country: "Bolivia",
      literalLocation: "Av. 6 de Octubre y Sargento Flores",
      latitude: -17.957107,
      longitude: -67.109199
    )
  ),
  Infringement(
    id: 2563,
    plateNumber: "2564BBI",
    authorId: 0,
    type: "Violación a semáforo",
    subtype: "Cruce en Rojo",
    croppedImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190801_102505_54_1_crop_plate.jpg?alt=media&token=d753831f-1fce-484e-9f63-89fae174ab2e",
    highResolutionImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190801_102505_54_1.jpg?alt=media&token=93933fb4-faf1-43a9-9d95-8edfe53967fe",
    gifUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fgifs%2F20190801-102504-19.gif?alt=media&token=389691e9-c5ec-42a7-824a-a0cde424a3bb",
    videoUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fvideos%2F20190801_102504_19.mp4?alt=media&token=514aff19-4225-4252-bc0a-a976b9552a5d",
    datetime: DateTime(2019,8,1,10,25,4),
    location: Location(
      city: "Oruro",
      state: "Oruro",
      country: "Bolivia",
      literalLocation: "Av. 6 de Octubre y Sargento Flores",
      latitude: -17.957107,
      longitude: -67.109199
    )
  ),
  Infringement(
    id: 1234,
    plateNumber: "244SYLE",
    authorId: 0,
    type: "Vehículo estancado",
    subtype: "Perjudica el trafico en sentido opuesto",
    croppedImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190731_150922_64_1_crop_plate.jpg?alt=media&token=a5bb0217-abbf-43e0-9dcf-383d38581eb0",
    highResolutionImageUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fimages%2F20190731_150922_64_1.jpg?alt=media&token=f681b1d5-bdf7-4b90-9cb0-a70f0e96ee2d",
    gifUrl: "",
    videoUrl: "https://firebasestorage.googleapis.com/v0/b/vialika.appspot.com/o/infringements%2Fvideos%2F20190731_150922_67.mp4?alt=media&token=9c008176-5e27-4ec8-9994-765bebdd1172",
    datetime: DateTime(2019,7,31,15,09,22),
    location: Location(
      city: "Oruro",
      state: "Oruro",
      country: "Bolivia",
      literalLocation: "Av. Brasil y Ejército",
      latitude: -17.968698,
      longitude: -67.105850
    )
  ),
];