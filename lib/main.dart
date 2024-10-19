<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:seat_booking/10-10-24/bottombar_page.dart';
import 'package:seat_booking/10-10-24/home.dart';
import 'package:seat_booking/14-10-24/bottem_navigationbar_ex.dart';
import 'package:seat_booking/alert_dialoge/alert_box.dart';
import 'package:seat_booking/alert_dialoge/profile.dart';
import 'package:seat_booking/home_page.dart';

void main() {
  runApp(const MyApp());
=======
import 'package:counter_app/16-10-24/provider.dart';
import 'package:counter_app/17-10-24/service.dart';
import 'package:counter_app/17-10-24/to_do.dart';
import 'package:counter_app/17-10-24/user_management_.dart';
import 'package:counter_app/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
 // runApp(ChangeNotifierProvider(create: (context) => CounterModel(),
  //child: const MyApp(),));
  runApp(
    ChangeNotifierProvider(
        create: (context) => UserProvider(), child: const MyApp()),
  );
>>>>>>> 0c6de71 (16-10-24)
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     /* theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "profile":(context)=>Profile(),
      },
      initialRoute: "profile",*/
      // BottombarPage()
     home:BottomNavigationbarEx(),
  
    );
  }
}
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserScreen(),
    );
  }
}

>>>>>>> 0c6de71 (16-10-24)
