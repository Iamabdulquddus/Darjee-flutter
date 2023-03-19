
import 'dart:convert';

CustomerModel customerModelFromJson(String str) => CustomerModel.fromJson(json.decode(str));

String customerModelToJson(CustomerModel data) => json.encode(data.toJson());

class CustomerModel {
  CustomerModel({
    this.customerId,
    this.fullName,
    this.registrationDate,
    this.referenceName,
    this.referenceNo,
    this.address,
    this.gender,
    this.phone,
    this.openingAmount,
    this.remainingAmount,
    this.paidAmount,
    this.paymentStatus,
    this.paymentOption,
    this.profilePic,
    this.birthDate,
    this.anniversaryDate,
  });

  int? customerId;
  String? fullName;
  DateTime? registrationDate;
  String? referenceName;
  String? referenceNo;
  String? address;
  String? gender;
  String? phone;
  String? openingAmount;
  int? remainingAmount;
  int? paidAmount;
  String? paymentStatus;
  String? paymentOption;
  String? profilePic;
  String? birthDate;
  String? anniversaryDate;

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
    customerId: json["customer_id"],
    fullName: json["full_name"],
    registrationDate: DateTime.parse(json["registration_date"]),
    referenceName: json["reference_name"],
    referenceNo: json["reference_no"],
    address: json["address"],
    gender: json["gender"],
    phone: json["phone"],
    openingAmount: json["opening_amount"],
    remainingAmount: json["remaining_amount"],
    paidAmount: json["paid_amount"],
    paymentStatus: json["payment_status"],
    paymentOption: json["payment_option"],
    profilePic: json["profile_pic"],
    birthDate: json["birth_date"],
    anniversaryDate: json["anniversary_date"],
  );

  Map<String, dynamic> toJson() => {
    "customer_id": customerId,
    "full_name": fullName,
    "registration_date": "${registrationDate!.year.toString().padLeft(4, '0')}-${registrationDate!.month.toString().padLeft(2, '0')}-${registrationDate!.day.toString().padLeft(2, '0')}",
    "reference_name": referenceName,
    "reference_no": referenceNo,
    "address": address,
    "gender": gender,
    "phone": phone,
    "opening_amount": openingAmount,
    "remaining_amount": remainingAmount,
    "paid_amount": paidAmount,
    "payment_status": paymentStatus,
    "payment_option": paymentOption,
    "profile_pic": profilePic,
    "birth_date": birthDate,
    "anniversary_date": anniversaryDate,
  };
}
