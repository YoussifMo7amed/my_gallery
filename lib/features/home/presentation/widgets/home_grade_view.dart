import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/service/shared_pref/pref_keys.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/core/theme/styles.dart';
import 'package:my_gallery/features/home/presentation/cubit/gallery_cubit.dart';

class ImageGridView extends StatefulWidget {

   ImageGridView({super.key});

  @override
  State<ImageGridView> createState() => _ImageGridViewState();
}

class _ImageGridViewState extends State<ImageGridView> {
  final List<String> imagePaths = [
    AppImages.appBackground,
    AppImages.homeScreen,
    AppImages.loginShapes,
    // Add paths for all images
  ];
@override
  void initState() {
  
    super.initState();
    context.read<GalleryCubit>().gallery(token: SharedPref().getString(PrefKeys.accessToken)!);
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryCubit, GalleryState>(
      builder: (context, state) {
      // context.read<GalleryCubit>().gallery(token: SharedPref().getString(PrefKeys.accessToken)!);
        return state.maybeWhen(
          orElse: () {
            return Center(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      textAlign: TextAlign.center,
                      'There are no images',
                      style: TextStyles.font30deepgreyBold,
                    ),
                  ),
                ],
              ),
            )
            ;
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
              ),
            );
          },
          success: (gallerydata) {
          
           return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: gallerydata.data.images.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                 gallerydata.data.images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            padding: const EdgeInsets.all(10.0),
          ),
        );

          }
        );
             },
    );
  }
}
