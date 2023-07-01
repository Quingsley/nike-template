import 'package:nike_app/common/providers/image_picker_provider.dart';
import 'package:nike_app/services/image_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_service_provider.g.dart';

@Riverpod(keepAlive: true)
ImageService imageService(ImageServiceRef ref) {
  var imagePicker = ref.watch(imagePickerProvider);
  return ImageService(imagePicker);
}
