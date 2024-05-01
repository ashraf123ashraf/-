import 'dart:io';

import 'package:file_picker/file_picker.dart';

class PickFile {
  Future<File?>? pickfile() async {
    // if(FilePickerStatus.picking == true)

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['Word'],
    );
    if (result != null) {
      File file = File(result.files.single.path ?? '');
      return file;
    }
    return null;
  }

  Future<List<File?>?> pickmulifiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );
    if (result != null) {
      List<File?>? file = result.files.map((e) => null).toList();
    }
    return null;
  }
}
