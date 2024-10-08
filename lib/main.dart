import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('BizzCard'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.qr_code_2),
            tooltip: 'QR code',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 245, 245, 245),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: const Stack(
            children: [
              Positioned(
                top: 150,
                left: 150,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
              ),
              Positioned(
                top: 260,
                left: 125,
                child: Text(
                  'Oumar LAM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 150,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    '24 years old',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 400,
                left: 110,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    'oumarlamsn@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 460,
                left: 125,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    '+221 77 346 35 12',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
