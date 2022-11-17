library nagraj_utils;

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// A Calculator.
class NUtils {
  static Future<File?> compressJPGImageFile(
      File jpgImageFile, int qualityApproxInKb) async {
    final tempDir = await getTemporaryDirectory();
    var result = await FlutterImageCompress.compressAndGetFile(
      jpgImageFile.absolute.path,
      '${tempDir.path}/temp.jpg',
      quality: qualityApproxInKb,
    );
    return result;
  }
}
