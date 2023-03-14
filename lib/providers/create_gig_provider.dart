import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class CreateGigProvider extends ChangeNotifier {
  List images = [];

  void addImage(XFile image) {
    images.add(image);
    notifyListeners();
  }

  void addImageAtIndex(int i, XFile image) {
    images[i] = image;
    notifyListeners();
  }
}
