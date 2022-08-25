import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:race_app/models/featuredModel.dart';
// ignore: camel_case_types
class favourite extends ChangeNotifier{
 final List<featuredModel> getFavourites =[];
 
  void addFavourite(featuredModel model){
    if(getFavourites.contains(model)){
    print('already added');
    }
   else{ getFavourites.add(model);
    print(getFavourites);
    notifyListeners();}
  }

}