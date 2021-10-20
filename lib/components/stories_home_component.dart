import 'package:flutter/material.dart';
import 'package:wakkenfun/constants/assets_constant.dart';

class StoriesHomeComponent extends StatelessWidget {
  final List data;
  const StoriesHomeComponent({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(8).copyWith(left: 0, right: 0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...data.map((e) {
            return Container(
              margin: const EdgeInsets.only(left: 16),
              width: 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AssetsConstant.userPictureSample),
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF7800FF)),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
