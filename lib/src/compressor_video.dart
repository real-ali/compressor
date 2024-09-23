import 'dart:io';

class Compressor {
  final String? _path;
  final bool? _isLocal;

  Compressor({String? path, bool? isLocal})
      : _path = path,
        _isLocal = isLocal;

  bool? get isLocal => _isLocal;

  String? get path => _path;

  String compressVideo() {
    if (_path == null) {
      throw Exception("Path is null!");
    }

    // Simulate the video compression logic here
    // For example, you can integrate an actual video compression library
    final byte = File(_path).readAsBytesSync();

    // Placeholder for actual compression logic
    // Perform compression and save the result

    return "Congratulations! Your video has been compressed.";
  }

  Compressor determineVideoSource() {
    try {
      late Compressor compressor;
      if (_path == null) throw Exception("Path is null!");

      if (_isLocal == false ||
          _path.startsWith("http") ||
          _path.startsWith("https")) {
        compressor = Compressor(path: _path, isLocal: false);
      } else {
        compressor = Compressor(path: _path, isLocal: true);
      }
      return compressor;
    } catch (e) {
      rethrow;
    }
  }

  Compressor setIsLocal(bool isLocal) {
    return Compressor(path: _path, isLocal: isLocal);
  }

  Compressor setPath(String path) {
    return Compressor(path: path, isLocal: _isLocal);
  }
}
