import 'package:flutter/foundation.dart';
import 'package:shamo/models/product_model.dart';

class MessageModel{
  String message;
  int userId;
  String userName;
  String userImage;
  bool isFromUser;
  ProductModel? product;
  DateTime createdAt;
  DateTime updatedAt;

  MessageModel({
    required this.message,
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.isFromUser,
    this.product,
    required this.createdAt,
    required this.updatedAt
  });

  factory MessageModel.fromJson(Map<String, dynamic> json)
  => MessageModel(
    message: json['message'], 
    userId: json['userId'], 
    userName: json['userName'], 
    userImage: json['userImage'], 
    isFromUser: json['isFromUser'], 
    product: json['product'].isEmpty ? null : ProductModel.fromJson(json['product']), 
    createdAt: DateTime.parse(json['createdAt']), 
    updatedAt: DateTime.parse(json['updatedAt'])
  );

  Map<String, dynamic> toJson(){
    return {
      'message': message,
      'userId': userId,
      'userName': userName,
      'userImage': userImage,
      'isFromUser': isFromUser,
      'product': product == null ? {} : product!.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString()
    };
  }
}