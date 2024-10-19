<<<<<<< HEAD
import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
=======
import 'package:counter_app/14-10-24/constands/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

>>>>>>> 0c6de71 (16-10-24)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
<<<<<<< HEAD
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.green, fontSize: 25),
        ),
        tabBarTheme: TabBarTheme(
          indicatorColor: const Color.fromARGB(255, 229, 228, 228),
          labelColor: const Color.fromARGB(255, 4, 4, 4),
        ),
      ),
      home: WhatsAppHomeScreen(),
=======
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.green, fontSize: 25),
        ),
        tabBarTheme: const TabBarTheme(
          indicatorColor: Color.fromARGB(255, 229, 228, 228),
          labelColor: Color.fromARGB(255, 4, 4, 4),
        ),
      ),
      home: const WhatsAppHomeScreen(),
>>>>>>> 0c6de71 (16-10-24)
    );
  }
}

class WhatsAppHomeScreen extends StatefulWidget {
<<<<<<< HEAD
=======
  const WhatsAppHomeScreen({super.key});

>>>>>>> 0c6de71 (16-10-24)
  @override
  _WhatsAppHomeScreenState createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen>
    with SingleTickerProviderStateMixin {
<<<<<<< HEAD
  int _selectedBottomNavIndex = 0;
=======
  final int _selectedBottomNavIndex = 0;
>>>>>>> 0c6de71 (16-10-24)
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(
        actions: [
          Icon(Icons.qr_code_scanner_sharp),
          SizedBox(width: 20),
          Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            onSelected: (value) {
              if (value == "profile") {
                // Add desired output for profile
              } else if (value == "settings") {
                // Add desired output for settings
              } else if (value == "logout") {
                // Add desired output for logout
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
=======
      backgroundColor: primary,
      appBar: AppBar(
        actions: [
          const Icon(Icons.qr_code_scanner_sharp),
          const SizedBox(width: 20),
          const Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            onSelected: (value) {
              if (value == "profile") {
              } else if (value == "settings") {
              } else if (value == "logout") {
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
>>>>>>> 0c6de71 (16-10-24)
                value: "profile",
                child: Row(
                  children: [
                    Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.person),
                    ),
                    const Text(
=======
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.person),
                    ),
                    Text(
>>>>>>> 0c6de71 (16-10-24)
                      'Profile',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
<<<<<<< HEAD
              PopupMenuItem(
=======
              const PopupMenuItem(
>>>>>>> 0c6de71 (16-10-24)
                value: "settings",
                child: Row(
                  children: [
                    Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.settings),
                    ),
                    const Text(
=======
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.settings),
                    ),
                    Text(
>>>>>>> 0c6de71 (16-10-24)
                      'Settings',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
<<<<<<< HEAD
              PopupMenuItem(
=======
              const PopupMenuItem(
>>>>>>> 0c6de71 (16-10-24)
                value: "logout",
                child: Row(
                  children: [
                    Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.logout),
                    ),
                    const Text(
=======
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.logout),
                    ),
                    Text(
>>>>>>> 0c6de71 (16-10-24)
                      'Logout',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
<<<<<<< HEAD
        title: Text('WhatsApp'),
=======
        title: const Text('WhatsApp'),
>>>>>>> 0c6de71 (16-10-24)
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
<<<<<<< HEAD
=======

              MyCustomButton(onTap: (){}, message: 'Submit'),
              MyCustomButton(onTap: (){}, message: 'add'),
              MyCustomButton(onTap: (){}, message: 'update'),

>>>>>>> 0c6de71 (16-10-24)
              SizedBox(
                width: 476,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
<<<<<<< HEAD
                    prefixIcon: Icon(Icons.search),
=======
                    prefixIcon: const Icon(Icons.search),
>>>>>>> 0c6de71 (16-10-24)
                    labelText: "Search",
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
<<<<<<< HEAD
              SizedBox(height: 10),
              
              Padding(
                padding:  EdgeInsets.only(left:8.0),
=======
              const SizedBox(height: 10),
              
              Padding(
                padding:  const EdgeInsets.only(left:8.0),
>>>>>>> 0c6de71 (16-10-24)
                child: Row(
                 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
<<<<<<< HEAD
                  ElevatedButton(onPressed: (){}, child:Text("All",),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])),),
                (Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){}, child:Text("Unread"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                (Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){}, child:Text("Favourites"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                (Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){}, child:Text("Group"),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200]))),
                (Padding(padding: EdgeInsets.only(left: 8.0))),
=======
                  ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])), child:const Text("All",),),
                (const Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])), child:const Text("Unread")),
                (const Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])), child:const Text("Favourites")),
                (const Padding(padding: EdgeInsets.only(left: 8.0))),
                ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey[200])), child:const Text("Group")),
                (const Padding(padding: EdgeInsets.only(left: 8.0))),
>>>>>>> 0c6de71 (16-10-24)
                ],),
              ),
            
              
              ListView.separated(
                shrinkWrap: true,
<<<<<<< HEAD
                physics: NeverScrollableScrollPhysics(), 
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(),
                    title: Text('person ${index + 1}'),
                    subtitle: Text('chats'),
                    trailing: Text('10:33 AM'),
=======
                physics: const NeverScrollableScrollPhysics(), 
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text('person ${index + 1}'),
                    subtitle: const Text('chats'),
                    trailing: const Text('10:33 AM'),
>>>>>>> 0c6de71 (16-10-24)
                  );
                  
                },
                separatorBuilder: (context, index) {
<<<<<<< HEAD
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  8.0),
=======
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal:  8.0),
>>>>>>> 0c6de71 (16-10-24)
                    child: Divider(
               
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _selectedBottomNavIndex == 0
          ? FloatingActionButton(
              onPressed: () {},
<<<<<<< HEAD
              child: Icon(Icons.add_comment, color: Colors.white),
              backgroundColor: const Color.fromARGB(255, 6, 204, 105),
=======
              backgroundColor: const Color.fromARGB(255, 6, 204, 105),
              child: const Icon(Icons.add_comment, color: Colors.white),
>>>>>>> 0c6de71 (16-10-24)
            )
          : null,
    );
  }
}
<<<<<<< HEAD
=======



>>>>>>> 0c6de71 (16-10-24)
