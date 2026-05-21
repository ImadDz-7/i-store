import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_store_app/utils/constants/sized.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space in all Screens.
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              
              /// Title & Subtitle

              /// Buttons
            ],
          ),
        ),
      ),
    );
  }
}
