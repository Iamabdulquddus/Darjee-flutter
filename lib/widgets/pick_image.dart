// import 'dart:html' as File;
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../constants/style.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? image;
  Uint8List webImage = Uint8List(8);

  final _picker = ImagePicker();
  Future<void> _openImagePicker() async {
    if (!kIsWeb) {
      final XFile? pickedImage =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          image = File(pickedImage.path);
        });
      } else {
        print('there is error picking image');
      }
    } else if (kIsWeb) {
      final XFile? pickedImage =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        var f = await pickedImage.readAsBytes();
        setState(() {
          webImage = f;
          image = File('a');
        });
      } else {
        print('there is error picking image');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              _openImagePicker();
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    offset: Offset(-6.0, -6.0),
                    blurRadius: 16.0,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(6.0, 6.0),
                    blurRadius: 16.0,
                  ),
                ],
                color: lightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 150,
              height: 150,
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: kIsWeb
                          ? Image.memory(
                              webImage,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/icons/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
