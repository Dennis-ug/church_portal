import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class Dialouge extends GetxController {
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  var img = ''.obs;
  var warningText = 'Only select jpg or png files'.obs;
  var loading = false.obs;
  Future<void> changePic() async {
//  _contro.loading.value == true;
    try {
      FilePickerResult? result = await FilePicker.platform
          .pickFiles(allowedExtensions: ['jpg', 'png']);

      if (result != null && result.files[0].extension != "svg") {
        img.value = result.files.single.path ?? '';
        // File file = File(result.files.single.path);
      } else {
        warningText.value = 'format not supported';
      }
    } catch (e) {
      img.value = '';
    }
  }
}
