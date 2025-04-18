import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/Services/API.dart';
import 'package:flutter_application_14/components/AuthScreen.dart';
import 'package:flutter_application_14/components/CatalogScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

      // Контроллеры для текстовых полей

    final TextEditingController FirstName = TextEditingController();
    final TextEditingController LastName = TextEditingController();
    final TextEditingController Phone = TextEditingController();
    final TextEditingController Password = TextEditingController();

    // Метод для регистрации

    Future <void> _RegMetod() async {
      setState(() {
        _Validate = _validatePhone(Phone.text);
      });
      await Api.postany('/register', {
      'first_name': FirstName.text,
      'last_name': LastName.text,
      'phone': Phone.text,
      'password': Password.text,
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CatalogScreen(token: '',),
        ),
      );
    }

    // Переменная для проверки валидности номера телефона

    bool _Validate = true;

    bool _validatePhone(String value) {
      String pattern = r'^[0-9]{10}$';
      RegExp regExp = RegExp(pattern);
      return regExp.hasMatch(value);
    }

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
                  image: AssetImage('assets/images/background.png'),
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
                            CupertinoPageRoute(
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
                      InkWell(
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => AuthScreen()));
                        },
                        child: Text('Login in', style: TextStyle(color: Colors.white))),
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
                      controller: FirstName,
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
                      controller: LastName,
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
                      keyboardType: TextInputType.phone,
                      controller: Phone,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone_android, size: 20),
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
                      controller: Password,
                      obscureText: _visibility,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
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
                          // вызываем метод регистрации при нажатии на кнопку
                          onPressed: () {
                           _RegMetod();
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
