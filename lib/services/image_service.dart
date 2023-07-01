import 'package:image_picker/image_picker.dart';

class ImageService {
  final ImagePicker picker;
  ImageService(this.picker);
  Future<XFile?> pickImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }
}
