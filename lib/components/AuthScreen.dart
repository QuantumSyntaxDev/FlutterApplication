import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/LoginScreen.dart';
import 'package:flutter_application_14/components/RegisterScreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://sdmntpreastus2.oaiusercontent.com/files/00000000-5300-61f6-8075-c70165802640/raw?se=2025-04-17T08%3A38%3A02Z&sp=r&sv=2024-08-04&sr=b&scid=4baa10e0-aa71-5912-8f57-3c70325a68a6&skoid=a3336399-497e-45e5-8f28-4b88ecca3d1f&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-16T21%3A26%3A39Z&ske=2025-04-17T21%3A26%3A39Z&sks=b&skv=2024-08-04&sig=Q2flXmyf4rhSr6BOJ5zapbw6ik/eUW4yqHfmFPUoN4c%3D',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    'Explore and learn new skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Join Sidoskill to wathck, play, learn, show and discover.',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Start Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginSceen(),
                              ),
                            );
                          },
                          child: Text(
                            'Get Started with 1 Month free',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: const Color.fromARGB(
                              0,
                              76,
                              175,
                              79,
                            ),
                          ),
                        ),
                      ),
                    ],
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
