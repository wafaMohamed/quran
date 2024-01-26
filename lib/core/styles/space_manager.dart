import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class SpaceManager {
  static SizedBox sizedBox5h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.005,
      );
  static SizedBox sizedBox25h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.025,
      );
  static SizedBox sizedBox8h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.008,
      );
  static SizedBox sizedBox8w(context) => SizedBox(
        height: MediaQuery.sizeOf(context).width * 0.008,
      );
  static SizedBox sizedBox12h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.012,
      );
  static SizedBox sizedBox12w(context) => SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.012,
      );
  static SizedBox sizedBox14w(context) => SizedBox(
        width: MediaQuery.sizeOf(context).height * 0.014,
      );
  static SizedBox sizedBox25w(context) => SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.025,
      );
  static SizedBox sizedBox80w(context) => SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.080,
      );
  static SizedBox sizedBox16h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.016,
      );

  static SizedBox sizedBox24h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.024,
      );
  static SizedBox sizedBox32h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.032,
      );
  static SizedBox sizedBox40h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.04,
      );
  static SizedBox sizedBox50h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05,
      );
  static SizedBox sizedBox70h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.07,
      );
  static SizedBox sizedBox90h(context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.09,
      );
  static SizedBox sizedBox100h(context) => SizedBox(
        height: 100.h,
      );
}
