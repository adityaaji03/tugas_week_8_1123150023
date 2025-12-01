import 'package:flutter/material.dart';

class MyPages extends StatelessWidget {
  const MyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Card Widget")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              
              elevation: 8,
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("card with color", style: TextStyle(fontSize: 12.0)),
              ),
            ),
            SizedBox(height: 16),

            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                "Tinggi bayangan Shadow",
                style: TextStyle(fontSize: 12.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
