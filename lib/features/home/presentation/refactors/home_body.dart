import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gallery/features/home/presentation/widgets/home_buttoms.dart';
import 'package:my_gallery/features/home/presentation/widgets/home_grade_view.dart';
import 'package:my_gallery/features/home/presentation/widgets/home_tittle_and_image.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
      children: [
        // Home Tittle and Image
        const HomeTittleAndImage(),
        const SizedBox(height: 10),
        // Home Buttoms
        const HomeButtoms(),
       
        const SizedBox(height: 20),
         //Images
         Expanded(child: ImageGridView()),
      ],
    ));
  }
}
