// CreateBLoC.dart

import 'dart:async';

import 'FirebaseService.dart';

class CreateBLoC {
  final _createController = StreamController<bool>();

  Stream<bool> get createStream => _createController.stream;

  void createData(Map<String, dynamic> data, String collectionName) {
    FirebaseService().createData(data, collectionName).then((_) {
      _createController.sink.add(true);
    });
  }

  void dispose() {
    _createController.close();
  }
}
