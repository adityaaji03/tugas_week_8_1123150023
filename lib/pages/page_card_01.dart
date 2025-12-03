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
                  
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 8,
              shadowColor: Colors.red,
              clipBehavior: Clip.antiAlias,

              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red],
                  ), // LinearGradient
                ), // BoxDecoration

                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        // ...
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 51),

                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                       
                      ), // BoxDecoration
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/kid.jpeg"),
                      ), // CircleAvatar
                    ), // Container (Avatar)
                    // Jarak
                    SizedBox(height: 10),

                    // 2. Bagian Nama
                    Text(
                      "Aditya Aji Pramono",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ), // TextStyle
                    ), // Text
                    // 3. Bagian Title ("Flutter Developer")
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ), // BoxDecoration
                      child: const Text(
                        'Mobile Developer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ), // TextStyle
                      ), // Text
                    ), // Container (Title)
                    // Jarak
                    SizedBox(height: 10),

                    // 4. Bagian Statistik (Menggunakan ROW)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Kolom 1: Follower
                        Column(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Follower",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withValues(alpha: 0.5),
                              ),
                            ),
                          ],
                        ), // Column 1
                        // Garis Vertikal
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.black,
                            width: 1,
                          ),
                        ), // SizedBox (Divider)
                        // Kolom 2: Year/Experience (Menggantikan Text "Column 2" di Page 22)
                        Column(
                          children: [
                            Text(
                              "20 year",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Experience",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withValues(alpha: 0.5),
                              ),
                            ),
                          ],
                        ), // Column 2
                        // Garis Vertikal
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.black,
                            width: 1,
                          ),
                        ), // SizedBox (Divider)
                        // Kolom 3: Project (Menggantikan Text "Column 3" di Page 22)
                        Column(
                          children: [
                            Text(
                              "250",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Project",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withValues(alpha: 0.5),
                              ),
                            ),
                          ],
                        ), // Column 3
                      ],
                    ), // Row (Statistik)
                  ],
                ), // Column
              ), // Container
            ), // Card // Card
            Card(
              elevation: 8,
              shadowColor: Colors.red,
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight, 
                    colors: [Colors.indigo, Colors.indigoAccent],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16) ,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Colors.white70,
                            size: 32,
                          ),
                          Icon(
                            Icons.contactless,
                            color: Colors.white54,
                            size: 32,
                          ),
                        ],
                      ),
                        SizedBox(height: 30),
                        Text(
                        "4562 1122 4595 7852",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 3,
                        ),
                        ),
                      
                     ],
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
