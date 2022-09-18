
import 'package:coffee_app/screens/detailsScreen.dart';
import 'package:flutter/material.dart';

import 'screens/cartScreens/cartScreen.dart';
import 'screens/homeScreen/Homescreen.dart';
import 'screens/splashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      title: 'Coffie App',
    debugShowCheckedModeBanner: false,

    home:  CartScreen(picture: 'images/coffee2.png', title: 'Capaccino with', title2: 'Chocolate', price: '23.0', service: '',)
      
        
        
      
    );
    
  }
}