import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../connection/connect.dart';
import '../model/customer_model.dart';


class CustomerController extends GetxController{


  TextEditingController nameTextController = TextEditingController();
  TextEditingController phoneNoTextController = TextEditingController();
  TextEditingController referencePhoneNoTextController = TextEditingController();
  TextEditingController referenceNameTextController = TextEditingController();
  TextEditingController openingBlncTextController = TextEditingController();

  List<dynamic> genderList =  ['male', 'female',"other"];
  String name = "male";



  TextEditingController searchTextController = TextEditingController();

  customerDetails(String query) async {
    List<CustomerModel> customerModel = [];
    var user = await Connect.fetchDetails(query);
    for(var json in user){
      customerModel.add(
          CustomerModel(
            customerId: json["customer_id"],
            fullName: json["full_name"],
            registrationDate: DateTime.parse(json["registration_date"]),
            referenceName: json["reference_name"],
            referenceNo: json["reference_no"],
            address: json["address"],
            gender: json["gender"],
            phone: json["phone"],
            openingAmount: json["opening_amount"],
            // remainingAmount: json["remaining_amount"] , paidAmount: json["paid_amount"] ?? 0,
            paymentStatus: json["payment_status"], paymentOption: json["payment_option"],
            profilePic: json["profile_pic"], birthDate: json["birth_date"],
            anniversaryDate: json["anniversary_date"],
      ));
    }
    return customerModel;
  }


}