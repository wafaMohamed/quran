// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
//
// class CustomCachedNetworkImage extends StatelessWidget {
//   const CustomCachedNetworkImage({Key? key, required this.imagePath})
//       : super(key: key);
//   final String imagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: imagePath,
//       fit: BoxFit.fill,
//       placeholder: (context, url) =>
//           const CircularProgressIndicator(color: ColorsManager.darkGreen),
//       errorWidget: (context, url, error) => Shimmer.fromColors(
//           baseColor: ColorsManager.blue2,
//           highlightColor: ColorsManager.white,
//           child: Container(
//             width: double.infinity,
//             color: ColorsManager.blue2,
//           )),
//     );
//   }
// }
