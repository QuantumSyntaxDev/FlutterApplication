import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/AuthScreen.dart';

class CatalogScreen extends StatefulWidget {
  // Строка токена
  final String token;
  const CatalogScreen({super.key, required this.token});

  @override
  State<CatalogScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<CatalogScreen> {
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
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Text(widget.token),
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
