import 'package:course/home/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTitle extends StatelessWidget {

  final String imageURL, categoryName;
  final Color color;

  CategoryTitle({required this.imageURL, required this.categoryName, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Category(
                category: categoryName.toLowerCase(),
              )),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 157,
        width: 128,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.only(right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imageURL),
            SizedBox(height: 14,),
            Text(categoryName,style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        ),
      ),
    );
  }
}