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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.all(16.0),
              elevation: 8,
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "card with color",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ),
            SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.red, width: 2),
              ),
              borderOnForeground: true, // false
              margin: EdgeInsets.all(16.0),
              elevation: 8,
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "border tidak menimpa konten",
                  style: TextStyle(fontSize: 12.0),
                ),
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
            ),

             Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Anti alias clip Card",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 16),

            Card(
              semanticContainer: true,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("Semantic true", style: TextStyle(fontSize: 14)),
              ),
            ),
            SizedBox(height: 16),

            Card(
              shadowColor: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Shadow Color Card",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Custom border Radius Card",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            SizedBox(height: 16),
             
            Card(
              elevation: 8,
              child: Padding(
                //padding
                padding: const EdgeInsets.all(20.0),
                // membuat Column untuk menempatkan text Title
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tentang Saya',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // --- Bagian yang dipisah oleh halaman ---
                    const SizedBox(height: 12),
                    const Text(
                      'an enthusiast in information technology (Digital Sign, Blockchain, et'
                      'c), with more than 20 years of experiences in the payment industry',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    // ... (kemungkinan ada kelanjutan kode di sini)
                  ],
                ),
              ),
            ),
          ],

          
        ),
      ),
    );
  }
}
