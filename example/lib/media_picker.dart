import 'package:flutter/material.dart';
import 'package:media_picker_widget/media_picker_widget.dart';

class MediaPickerScreen extends StatefulWidget {
  const MediaPickerScreen({Key? key}) : super(key: key);

  @override
  State<MediaPickerScreen> createState() => _MediaPickerScreenState();
}

class _MediaPickerScreenState extends State<MediaPickerScreen> {
  List<Media> mediaList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MediaPicker(
          mediaList: mediaList,
          onPick: (selectedList) {
            setState(() => mediaList = selectedList);
            Navigator.pop(context);
          },
          onCancel: () => Navigator.pop(context),
          mediaCount: MediaCount.multiple,
          mediaType: MediaType.image,
          decoration: PickerDecoration(
            cancelIcon: SizedBox.shrink(),
            actionBarPosition: ActionBarPosition.top,
            blurStrength: 2,
            completeText: 'Next',
          ),
        ),
      ),
    );
  }
}
