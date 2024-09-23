import 'dart:io';

import 'package:compressor/compressor.dart';

void main(List<String> arguments) async {
  final file = File('assets/test_video.mp4');
  final compressor = Compressor();
  final result =
      compressor.setPath(file.path).determineVideoSource().compressVideo();
  print(result);
}
