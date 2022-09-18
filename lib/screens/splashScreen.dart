import 'package:coffee_app/screens/diveInScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>  {
 @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds:10),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DiveIn()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Scaffold(
          body: Center(
            child:Lottie.network('https://assets10.lottiefiles.com/packages/lf20_GydLEy.json')
          ),
        
         
          
      ),
    );
  }
}
