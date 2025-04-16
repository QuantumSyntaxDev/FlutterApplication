import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/AuthScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  /// Variables
  bool _visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://sdmntpreastus2.oaiusercontent.com/files/00000000-5300-61f6-8075-c70165802640/raw?se=2025-04-16T19%3A57%3A04Z&sp=r&sv=2024-08-04&sr=b&scid=35419bc9-6d64-570a-b579-2cee7fe67221&skoid=3f3a9132-9530-48ef-96b7-fee5a811733f&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-04-16T12%3A58%3A57Z&ske=2025-04-17T12%3A58%3A57Z&sks=b&skv=2024-08-04&sig=FsSWJaNgcUJq6e5RiB4DUzQgSmjLc8YxUtKqR4gM5FA%3D',
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
                          'Register',
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
                          'Alredy have an account?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('Login in', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'First Name',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Type First Name',
                        filled: true,
                        fillColor: const Color.fromARGB(0, 255, 255, 255),
                        focusColor: Colors.green,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Last Name',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Type Last Name',
                        filled: true,
                        fillColor: const Color.fromARGB(0, 255, 255, 255),
                        focusColor: Colors.green,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        suffix: Icon(Icons.phone_android, size: 20),
                        hintText: 'Type Phone Number',
                        filled: true,
                        fillColor: const Color.fromARGB(0, 255, 255, 255),
                        focusColor: Colors.green,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Create Password',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextField(
                      obscureText: _visibility,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              _visibility = !_visibility;
                            });
                          },
                          icon: Icon(
                            _visibility
                                ? Icons.visibility
                                : Icons.visibility_off,
                                size: 20,
                          ),
                        ),
                        hintText: 'Type yout password',
                        filled: true,
                        fillColor: const Color.fromARGB(0, 255, 255, 255),
                        focusColor: Colors.green,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
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
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
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
