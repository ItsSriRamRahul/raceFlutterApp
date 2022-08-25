import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// ignore: camel_case_types
class searchBarState extends ChangeNotifier{
  String searchText=''; 
void updateSearchText(String searchText){
  this.searchText=searchText;
  
  notifyListeners();
}
}