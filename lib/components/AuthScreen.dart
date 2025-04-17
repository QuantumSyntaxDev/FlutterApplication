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
              'https://sdmntpreastus2.oaiusercontent.com/files/00000000-5300-61f6-8075-c70165802640/raw?se=2025-04-17T07%3A32%3A35Z&sp=r&sv=2024-08-04&sr=b&scid=a8c6e932-5274-580f-8c8d-184747c010eb&skoid=365eb242-95ba-4335-a618-2c9f8f766a86&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-16T23%3A39%3A53Z&ske=2025-04-17T23%3A39%3A53Z&sks=b&skv=2024-08-04&sig=hwFD6twXNLZUraQhcFQoGdCc2fInx21JywQ0Q66NyC4%3D',
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
