import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import 'custom_file_container.dart';

class FileSelection extends StatefulWidget {
  const FileSelection({super.key});

  @override
  State<FileSelection> createState() => _FileSelectionState();
}

class _FileSelectionState extends State<FileSelection> {
  @override
  Widget build(BuildContext context) {
    List<PlatformFile> selectedFiles = [];
    Future<void> uploadFiles() async {
      try {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.any,
          allowMultiple: true, // Enable multiple file selection
        );

        if (result != null) {
          setState(() {
            selectedFiles = result.files;
          });
        }
      } catch (e) {
        Dialog(
          child: Text(e.toString()),
        );
      }
    }

    return GestureDetector(
      onTap: () {
        uploadFiles();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.greyColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.file_copy),
                SizedBox(width: 10),
                Text('Upload File'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              selectedFiles.isNotEmpty
                  ? selectedFiles.map((file) => file.name).join(" , ")
                  : "No files selected",
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainer(
                  title: 'CV',
                ),
                CustomContainer(
                  title: 'Profile\nPicture',
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainer(
                  title: 'PSA 1',
                ),
                CustomContainer(
                  title: 'PSA 2 (Optional)',
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: CustomContainer(
              title: 'PSA 3 (Optional)',
            )),
            const SizedBox(
              height: 10,
            ),
            const Text('No attachments over 2mbs')
          ],
        ),
      ),
    );
  }
}
