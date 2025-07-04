import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';


enum ImageType { png, network, file, unknown }

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

ImageProvider<Object> customImageView(String imagePath)   {
  print("imagePath : $imagePath");
  switch (imagePath.imageType) {
    
    case ImageType.file:
 
      return FileImage(
        File(imagePath),
      );
    case ImageType.network:
      return CachedNetworkImageProvider(
        imagePath,
      );
    case ImageType.png:
    default:
      return AssetImage(
        imagePath,
      );
  }
}
