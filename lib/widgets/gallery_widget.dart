import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.___ อยู่ในช่วงrun time keyword const ทำงานใน compile time มันเลยขัดกันให้ลบ const keyword
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/flutter.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/dart.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.___ อยู่ในช่วงrun time keyword const ทำงานใน compile time มันเลยขัดกันให้ลบ const keyword
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/android-os.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/mobile-phone.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.___ อยู่ในช่วงrun time keyword const ทำงานใน compile time มันเลยขัดกันให้ลบ const keyword
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/vscode.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              // color: Colors.red,
              child: Image.asset(
                '../../assets/images/android-studio.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
