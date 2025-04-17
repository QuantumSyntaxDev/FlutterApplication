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
                    'https://sdmntpreastus2.oaiusercontent.com/files/00000000-5300-61f6-8075-c70165802640/raw?se=2025-04-17T08%3A38%3A02Z&sp=r&sv=2024-08-04&sr=b&scid=4baa10e0-aa71-5912-8f57-3c70325a68a6&skoid=a3336399-497e-45e5-8f28-4b88ecca3d1f&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-16T21%3A26%3A39Z&ske=2025-04-17T21%3A26%3A39Z&sks=b&skv=2024-08-04&sig=Q2flXmyf4rhSr6BOJ5zapbw6ik/eUW4yqHfmFPUoN4c%3D',
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
