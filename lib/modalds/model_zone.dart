import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class eqwfsa {
  String? description;
  String? id;
  String? location;
  String? time;
  Timestamp? date;
  Timestamp? date2;
  Timestamp? date3;
  String? location2;
  String? time2;
  String? location3;
  String? time3;
  double? mapsLangLink;
  double? mapsLatLink;
  String? title;
  String? type;
  String? userDesc;
  String? userName;
  String? userProfile;
  String? image;
  int? count;
  LatLng? latLng;

  eqwfsa({
    this.date,
    this.description,
    this.id,
    this.location,
    this.time,
    this.mapsLangLink,
    this.mapsLatLink,
    this.title,
    this.type,
    this.userDesc,
    this.userName,
    this.image,
    this.count,
    this.latLng,
    this.userProfile,
    this.location2,
    this.time2,
    this.date2,
    this.location3,
    this.time3,
    this.date3,
  });

  factory eqwfsa.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    LatLng? latLng;
    if (data['mapsLatLink'] != null && data['mapsLangLink'] != null) {
      latLng = LatLng(data['mapsLatLink'], data['mapsLangLink']);
    }

    // Fungsi untuk memeriksa dan mengonversi nilai menjadi Timestamp
    Timestamp? parseTimestamp(dynamic value) {
      if (value is Timestamp) {
        return value;
      } else if (value is String && value.isEmpty) {
        // Mengembalikan Timestamp untuk tanggal 17 Agustus 1945 jika string kosong
        return Timestamp.fromDate(DateTime(1945, 8, 17));
      } else {
        // Mengembalikan Timestamp untuk tanggal 17 Agustus 1945 jika bukan Timestamp
        return Timestamp.fromDate(DateTime(1945, 8, 17));
      }
    }

    return eqwfsa(
      date: parseTimestamp(data['date']),
      image: data['image'],
      description: data['description'],
      id: data['id'],
      latLng: latLng,
      count: data['count'],
      location: data['location'],
      time: data['time'],
      mapsLangLink: data['mapsLangLink'],
      mapsLatLink: data['mapsLatLink'],
      title: data['title'],
      type: data['type'],
      userDesc: data['userDesc'],
      userName: data['userName'],
      userProfile: data['userProfile'],
      date2: parseTimestamp(data['date2']),
      date3: parseTimestamp(data['date3']),
      location2: data['location2'],
      location3: data['location3'],
      time2: data['time2'],
      time3: data['time3'],
    );
  }
}
