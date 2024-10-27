import 'package:flutter/material.dart';

import 'baking_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE4E1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/images (1).jpg', height: 150,
              // تأكد من إضافة الصورة في مجلد الأصول
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              "Sweet Cake Maker",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Your personal cake baking assistant",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // الانتقال إلى صفحة صنع الكعكة
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BakingPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF69B4),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child:
                  Text("Let's Make a Cake! 🎂", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
