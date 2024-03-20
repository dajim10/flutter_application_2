import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataModel {
  final String cid;
  final String prefix;
  final String fname;
  final String lname;
  final String fnamee;
  final String lnamee;
  final String aposition;
  final String campuscode;
  final String campusname;
  final String facultycode;
  final String facultyname;
  final String departmentcode;
  final String departmentname;
  final String sectioncode;
  final String sectionname;
  final String email;
  final String gender;
  final String epassport;
  DataModel({
    required this.cid,
    required this.prefix,
    required this.fname,
    required this.lname,
    required this.fnamee,
    required this.lnamee,
    required this.aposition,
    required this.campuscode,
    required this.campusname,
    required this.facultycode,
    required this.facultyname,
    required this.departmentcode,
    required this.departmentname,
    required this.sectioncode,
    required this.sectionname,
    required this.email,
    required this.gender,
    required this.epassport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cid': cid,
      'prefix': prefix,
      'fname': fname,
      'lname': lname,
      'fnamee': fnamee,
      'lnamee': lnamee,
      'aposition': aposition,
      'campuscode': campuscode,
      'campusname': campusname,
      'facultycode': facultycode,
      'facultyname': facultyname,
      'departmentcode': departmentcode,
      'departmentname': departmentname,
      'sectioncode': sectioncode,
      'sectionname': sectionname,
      'email': email,
      'gender': gender,
      'epassport': epassport,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      cid: (map['cid'] ?? '') as String,
      prefix: (map['prefix'] ?? '') as String,
      fname: (map['fname'] ?? '') as String,
      lname: (map['lname'] ?? '') as String,
      fnamee: (map['fnamee'] ?? '') as String,
      lnamee: (map['lnamee'] ?? '') as String,
      aposition: (map['aposition'] ?? '') as String,
      campuscode: (map['campuscode'] ?? '') as String,
      campusname: (map['campusname'] ?? '') as String,
      facultycode: (map['facultycode'] ?? '') as String,
      facultyname: (map['facultyname'] ?? '') as String,
      departmentcode: (map['departmentcode'] ?? '') as String,
      departmentname: (map['departmentname'] ?? '') as String,
      sectioncode: (map['sectioncode'] ?? '') as String,
      sectionname: (map['sectionname'] ?? '') as String,
      email: (map['email'] ?? '') as String,
      gender: (map['gender'] ?? '') as String,
      epassport: (map['epassport'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
