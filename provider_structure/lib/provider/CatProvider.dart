import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider_structure/model/Glitch/Glitch.dart';
import 'package:provider_structure/model/Helper/CatPhotoHelper.dart';
import 'package:provider_structure/model/core/CatPhoto.dart';

class CatProvider extends ChangeNotifier {
  final _helper = CatPhotoHelper();
  final _streamController = StreamController<Either<Glitch, CatPhoto>>();
  Stream<Either<Glitch, CatPhoto>> get catPhotoStream {
    return _streamController.stream;
  }

  Future<void> getTwentyRandomPhoto() async {
    for (int i = 0; i < 20; i++) {
      final catHelperResult = await _helper.getRandomCatPhoto();
      _streamController.add(catHelperResult);
    }
  }

  void refreshGird() {
    getTwentyRandomPhoto();
  }
}
