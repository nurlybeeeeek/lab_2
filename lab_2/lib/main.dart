import 'package:flutter/material.dart';

void main() { // 

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
                    title: const Text("Lab 3: Layout Basics",
                     style: TextStyle(color: Colors.white,
                      fontSize: 20, 
                      fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.teal,
        ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
    
          Container(
             padding: const EdgeInsets.all(16),
             margin: EdgeInsets.all(30),
            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(2, 2),)],),
            child: const Center(
            child: Text("Welcome to Flutter!", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
          ),
          ),
          ),
          const SizedBox(height: 16),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Left Text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Right Text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                       ),
                    ),
                  ],
                ),
              ),
            ],
          ),
    ),
);
}
}
