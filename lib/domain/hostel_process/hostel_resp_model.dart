// To parse this JSON data, do
//
//     final hostelResponseModel = hostelResponseModelFromJson(jsonString);

import 'dart:convert';

HostelResponseModel hostelResponseModelFromJson(String str) => HostelResponseModel.fromJson(json.decode(str));

String hostelResponseModelToJson(HostelResponseModel data) => json.encode(data.toJson());

class HostelResponseModel {
    String description;
    String hostelName;
    Location location;
    String ownerName;
    String personsPerRoom;
    String phoneNumber;
    String rent;
    String rooms;
    String vacancy;
    String hostelId;

    HostelResponseModel({
        required this.description,
        required this.hostelName,
        required this.location,
        required this.ownerName,
        required this.personsPerRoom,
        required this.phoneNumber,
        required this.rent,
        required this.rooms,
        required this.vacancy,
        required this.hostelId,
    });

    factory HostelResponseModel.fromJson(Map<String, dynamic> json) => HostelResponseModel(
        description: json["description"],
        hostelName: json["hostel_name"],
        location: Location.fromJson(json["location"]),
        ownerName: json["owner_name"],
        personsPerRoom: json["persons_per_room"],
        phoneNumber: json["phone_number"],
        rent: json["rent"],
        rooms: json["rooms"],
        vacancy: json["vacancy"],
        hostelId:json["hostelId"]
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "hostel_name": hostelName,
        "location": location.toJson(),
        "owner_name": ownerName,
        "persons_per_room": personsPerRoom,
        "phone_number": phoneNumber,
        "rent": rent,
        "rooms": rooms,
        "vacancy": vacancy,
        "hostelId": hostelId
    };
}

class Location {
    double latitude;
    double longitude;

    Location({
        required this.latitude,
        required this.longitude,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}
