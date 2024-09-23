import 'dart:io';

class Compressor {
  final String? _path;
  final bool? _isLocal;

  Compressor({String? path, bool? isLocal})
      : _path = path,
        _isLocal = isLocal;

  bool? getIsLocal() {
    return _isLocal;
  }

  String? getPath() {
    return _path;
  }

  String result() {
    final byte = File(_path!).readAsBytesSync();
    return "Congratulation:) Your video compressed";
  }

  Compressor setIsLocal(bool isLocal) {
    return Compressor(path: _path, isLocal: isLocal);
  }

  Compressor setPath(String path) {
    return Compressor(path: path, isLocal: _isLocal);
  }

  Compressor vidoe() {
    try {
      late Compressor compressor;
      if (_path == null) throw "path is null!";
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
}
