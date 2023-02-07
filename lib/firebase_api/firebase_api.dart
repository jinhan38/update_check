import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class FirebaseApi {
  Future<String> getHtmlText(String firebaseLink) async {
    String result = "";
    final gsReference = FirebaseStorage.instance.refFromURL(firebaseLink);
    const oneMegabyte = 1024 * 1024;
    final Uint8List? data = await gsReference.getData(oneMegabyte);
    if (data != null) {
      result = File.fromRawPath(data).path;
    }
    print('FirebaseApi.getHtmlText\n$result');
    return result;
  }
}
