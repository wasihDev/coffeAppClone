import 'package:coffee_app/screens/cartScreens/cartScreen.dart';
import 'package:coffee_app/screens/detailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class listView extends StatelessWidget {
   listView({ 
     Key? key,
    required this.pic,
    required this.rating,
    required this.title, 
    required this.descriptions,
    required this.price
   }) : super(key: key);


  late String pic;
  late double rating;
  late String title;
   late String descriptions;
  late num price;

  //  listView({ required this.pic, required this.rating, 
  //  required this.title, required this.descriptions, required this.price}) ;
  

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
 
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailScreen()));
                      },
  
      child: Container(
               height: 240,
                width: 160,
            child: Padding(
              padding: const EdgeInsets.only(left:5),
              child: Card(    
                //borderOnForeground: false,
                elevation: 3,
                shape:  RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20) ),
    
                child: Stack(
    
                  children: [
    
                     Positioned(
                      top: 12,
                      right: 8,
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left:80,bottom:100),
                          child: Row(
                            children:  [
                              const Icon(Icons.star,color:Color.fromARGB(255, 243, 138, 1),size: 20,),
                              Text("$rating",style:const TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ), 
                      
                        
                       decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(22),
                       color: const Color(0xFFFF9000),
                        image:  DecorationImage(
                          alignment: Alignment.center,
                        image: AssetImage(pic),
                        fit:BoxFit.cover),),
                        
                        ),
                      ),
    
    
                       Positioned(
                        top:150,
                        left:15,
                        child: Column(
                          children: [
                            Text(title,
                            style: GoogleFonts.lato(textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 151, 133, 99))),),
                             Padding(
                               padding: const EdgeInsets.only(left:0),
                               child: Text(descriptions,
                            style: GoogleFonts.lato(textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 151, 133, 99)))),
                             ),
    
                             const SizedBox(height: 21,),
                             Text("$price",
                            style: GoogleFonts.lato(textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 151, 133, 99))),),
                          ],
                        ),    
                ),
    
    
                Container(
                  alignment: Alignment.bottomRight,
                  //mainAxisAlignment:MainAxisAlignment.spaceAround,
                  child: Positioned(
                    top:0,
                    left: 0,
                    child: Row(
                       children: [
                         const Padding(
                          padding: EdgeInsets.only(left:19.0,top:6),
                          child: Text("\$",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 151, 133, 99))),
                        ),
    
    
                        Padding(
                          padding: const EdgeInsets.only(left:75),
                          child: CircleAvatar(
                            radius: 20,
                           backgroundColor: Colors.brown,
                            child: IconButton(
                            highlightColor: Colors.grey,
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>const CartScreen(picture: '', title: '', title2: '', price: '', service: '',),
                                  
                                  ));
                              }, 
                              icon: const Icon(Icons.add,color: Color.fromARGB(255, 255, 255, 255),)),
                          ),
                        ),
                            
                        
                       ],)
                    ),
                ),
                
          ],
                 
                ),
                
          ),
            ),
          
          ),
    );
  }
}


// card
// image with small size
//text on that image on rightTop
//text after image on the same card