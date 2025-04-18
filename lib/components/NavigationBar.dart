import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/CatalogScreen.dart';

class NavigatorBar extends StatefulWidget {
final String token;
  const NavigatorBar({super.key, required this.token});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int _SellectedIndex = 0;
  void _ClickButton(int index){
    setState(() {
      _SellectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call_to_action),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
      body: IndexedStack(
        index: _SellectedIndex,
        children: [
          CatalogScreen(token: widget.token)
        ],
      ),
    );
  }
}
