import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Dua")),
      body: Center(
        child: Column(
          children: [
            Text("Page Dua"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Kembali Ke Page Satu"))
          ],
        ),
      ),
    );
  }
}