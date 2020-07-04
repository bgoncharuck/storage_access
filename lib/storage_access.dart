library storage_access;

import 'dart:io';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';


Future<String> get _appDirPath async =>
    (await getApplicationDocumentsDirectory()).path;


Future<bool> write({@required String data, @required String asFile}) async {
  if (await Permission.storage.request().isGranted == false) return false;
  return (File("${await _appDirPath}/$asFile")).writeAsString(data) != null;
}

//  @NULLABLE
Future<String> read({@required String fromFile}) async {
  if (await Permission.storage.request().isGranted == false) return null;
  try {
    return (File("${await _appDirPath}/$fromFile")).readAsString();
  } catch (readError) {
    return null;
  }
}
