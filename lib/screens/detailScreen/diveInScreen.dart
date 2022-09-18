import 'package:coffee_app/screens/homeScreen/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiveIn extends StatefulWidget {
  const DiveIn({ Key? key }) : super(key: key);

  @override
  State<DiveIn> createState() => _SplashState();
}

class _SplashState extends State<DiveIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 216, 174),

      body: (
       
         Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 180, 80, 0),
                child: Image.asset("images/1.png"),
              ),
               
                //Texts

               const Padding(
                 padding: EdgeInsets.only(top: 80),
                 child: Text("Stay Focused",
                 style:TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 43, 28, 1)),),
               ),

                  Padding(
                 padding: EdgeInsets.only(top:15),
                 child: Text("Get the cup filled of your choice to stay",
                 style: GoogleFonts.lato(
                  textStyle: TextStyle(fontSize: 16,color: Color.fromARGB(255, 133, 133, 133)))),
               ),

               const Padding(
                 padding: EdgeInsets.only(top:6.0),
                 child: Text("focusd and awake. Diffrent type of coffee",
                 style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 133, 133, 133)),),
                 
               ),
               const Padding(
                 padding: EdgeInsets.only(top:6.0,bottom: 50),
                 child: Text("menu, hot lottee cappucino",
                 style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 124, 124, 124)),),
               ),
               

               //Button


                SizedBox(
                  width: 150, 
                  height: 50,
                  child: ElevatedButton(
                  onPressed: (){Navigator.push(
                 context, MaterialPageRoute(builder: (context) => const HomeScreen()),
                   );}, 

                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(26, 0, 8, 0),
                      child: Text("Dive In",style:TextStyle(fontSize: 16),),
                      ),
                      Icon(Icons.arrow_forward_rounded,size: 17,),
                    ],
                    ),
                      style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all
                      (const Color.fromARGB(255, 150, 90, 0)) ,shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    
                             )
                          )),
                        ),
               )],
          )


          
      ),
 
      
    );
  }
}