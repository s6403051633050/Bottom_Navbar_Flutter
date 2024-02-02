import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class PictureScreen extends StatelessWidget {
  PictureScreen({super.key});

  final _items = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ]; // final ตีกับ const ข้างบน ให้ลบ const ข้างบนไปเลย
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MasonryView( //ถ้ามีให้แสดงว่าต้องใส่ไม่งั้นerrorถ้าoptionalจะไม่ใส่ให้
          listOfItem: _items,//ส่งตัวแปรเราเข้ามาที่ properties ของ listOfItem
          numberOfColumn: 2,//numberOfColumnหนึ่งpageแสดงรูปภาพกี่column?ใส่2,3ก็ได้
          itemBuilder: (item) {
            return Image.asset(item);
          }),//itemBuilderต้องมีการเขียนวนloop ใส่ (ตัวแปรที่สร้างเช่นitem) {}
    ); //ถ้าข้อมูลล้นหน้าจอก็มี scroll bar ให้
  }
}
