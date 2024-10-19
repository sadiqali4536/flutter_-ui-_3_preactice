import 'package:counter_app/14-10-24/whatsapp.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarEx extends StatefulWidget {
  const BottomNavigationbarEx({super.key});

  @override
  State<BottomNavigationbarEx> createState() => _BottomNavigationbarExState();
}

class _BottomNavigationbarExState extends State<BottomNavigationbarEx> {
  int _selectedBottomNavIndex = 0; 

 
  final List<Widget> _bottomNavScreens = [
    const WhatsApp(), 
    const Center(child: Text("Updates"),),
    const Center(child: Text("Communities"),),
    const Center(child:Text("Calls") ,)
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedBottomNavIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavScreens[_selectedBottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        currentIndex: _selectedBottomNavIndex,
        onTap: _onBottomNavTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Color.fromARGB(255, 26, 25, 25),),
            label: 'chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,color: Color.fromARGB(255, 2, 2, 2),),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_sharp,size: 30,color: Color.fromARGB(255, 2, 2, 2),),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined,color: Color.fromARGB(255, 5, 5, 5),),
            label: 'Calls',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 11, 11, 11),
      ),
    
    );
  }
}

