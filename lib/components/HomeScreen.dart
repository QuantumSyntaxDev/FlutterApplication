import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/AuthScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://sdmntpreastus2.oaiusercontent.com/files/00000000-5300-61f6-8075-c70165802640/raw?se=2025-04-17T07%3A32%3A35Z&sp=r&sv=2024-08-04&sr=b&scid=a8c6e932-5274-580f-8c8d-184747c010eb&skoid=365eb242-95ba-4335-a618-2c9f8f766a86&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-16T23%3A39%3A53Z&ske=2025-04-17T23%3A39%3A53Z&sks=b&skv=2024-08-04&sig=hwFD6twXNLZUraQhcFQoGdCc2fInx21JywQ0Q66NyC4%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AuthScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Wellcome to Sidoskill',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'How are you today?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),                
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    ));
  }
}
