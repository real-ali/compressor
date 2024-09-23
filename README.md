
# Compressor

A simple Dart package designed to compress media files such as videos and images, making them smaller in size without sacrificing much quality. This package is ideal for developers who want to save storage space and improve performance in their applications.

## Overview

The `compressor` package offers an easy-to-use API for compressing media files such as videos and images. By integrating this package into your Dart or Flutter projects, you can optimize the size of large media files for faster load times and lower storage costs.

### Supported Media Types

- **Videos**: Compress video files using common video compression techniques.
- **Images**: Reduce the file size of images such as JPEGs and PNGs while preserving acceptable visual quality.

## Features

- Compress local and remote media files.
- Automatically determine whether a file is stored locally or remotely (via HTTP/HTTPS).
- Simple, fluent API to handle compression tasks.
- Support for videos and images.
- Placeholder for future advanced compression techniques and formats.

## Installation

To use the `compressor` package in your Dart or Flutter project, add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  compressor: ^0.0.1
```

Then, fetch the dependencies by running:

```bash
dart pub get
```

## Usage

Here is an example of how to use the `compressor` package for compressing media files.

### Compressing a Video

```dart
import 'package:compressor/compressor.dart';

void main() {
  // Specify the path to your video file
  String videoPath = 'path/to/video.mp4';
  
  // Create a compressor instance and specify that it's a local file
  Compressor compressor = Compressor(path: videoPath, isLocal: true);

  // Compress the video
  String result = compressor.compressVideo();
  print(result); // Output: "Congratulations! Your video has been compressed."
}
```

### Compressing an Image

```dart
import 'package:compressor/compressor.dart';

void main() {
  // Specify the path to your image file
  String imagePath = 'path/to/image.png';
  
  // Create a compressor instance and specify that it's a local file
  Compressor compressor = Compressor(path: imagePath, isLocal: true);

  // Currently, this will use a placeholder compression method
  String result = compressor.compressVideo(); // Replace with a real image compression method in future updates
  print(result); // Output: "Congratulations! Your video has been compressed."
}
```

### Handling Remote Files

The `compressor` package can also handle remote files (videos or images) from URLs:

```dart
import 'package:compressor/compressor.dart';

void main() {
  // Specify the URL to a remote video file
  String remoteVideoUrl = 'https://example.com/video.mp4';
  
  // Create a compressor instance and specify that it's a remote file
  Compressor compressor = Compressor(path: remoteVideoUrl, isLocal: false);

  // Compress the video
  String result = compressor.compressVideo();
  print(result); // Output: "Congratulations! Your video has been compressed."
}
```

## Future Development

- **Advanced Compression**: Integration of more advanced compression techniques such as H.264 for video compression.
- **Image Compression**: Optimized algorithms for compressing image files.
- **Error Handling**: Improved error messages and handling for unsupported file types or faulty media.
- **Compression Levels**: Options to adjust compression levels (e.g., low, medium, high) depending on the use case.

## Author

This package is developed and maintained by **Sayed Ali Sina Hussaini**.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
