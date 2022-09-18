import 'package:coffee_app/screens/homeScreen/Homescreen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
        
            Padding(
              padding: const EdgeInsets.only(left:2,top: 16),
        
              child: Container(
                height: 350,
                width: 400,
        
                child: Card(
                  shape:  RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(40)),
        
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                        image:  const DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage("images/coffee2.png"),
                        fit:BoxFit.cover),),
                    child: Stack(
                      children: [
                        Row(
                          children: [
        
                            Positioned(
                              child: Padding(
                                padding: const EdgeInsets.only(left:10,top:15,right:285),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(onPressed: (){
                                     
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                      
                                  }, 
                                  icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,),),
                                ),
                                
                              ),
                              
                            ),
                                CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(onPressed: (){}, 
                              icon: const Icon(Icons.library_add_check_rounded,color:Colors.red,),),
                            ),
                         
                          ],
                        ),
                    Positioned(
                      top:240,
                      child: Container(
                        height: 100,
                        width: 390,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey,
                          backgroundBlendMode: BlendMode.darken
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 13, 210, 0),
                              child: Column(
                                children:const [
                           Text("Espresso",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                           
                           Text("with chocolate",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.normal),),
                          ]
                          ),
                            ),
        
                            
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top:14),
                            child: Row(
                              children:  const [
                                Icon(Icons.star,color:Color.fromARGB(255, 255, 136, 0)),
                                Text("4.8",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
        
                                SizedBox(width: 130,),
                                Text("Medium Roasted",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),)
                             ],
                            ),
                          ),
                          
                        ],
                      
                        ) ,
                      ),
                    ),
        
                      ],
                                        
         
                  ),
                    
                  ),
                  
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  color: Colors.white54,
                  child: const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 280),
                      child: Text("Description",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                    )),
                    
                ),
                const SizedBox(height:15),
                
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Lorem Ipusm so its a dummy text that i written i dont know whats its means Vel tincind this is coffee app i gonna make this app ........Read More",textAlign: TextAlign.left,),
                ),
                const SizedBox(height:15),
        
                const Padding(
                  padding: EdgeInsets.only(right:210),
                  child: Text("Choice of Chocolate",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
        
                 const SizedBox(height:15),
        
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20,right:10),
                          child: Container(      
                            height: 30,
                            width: 120,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.brown,),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                              child: Text("white Chocolate",style:  TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ),
                  
                         Padding(
                          padding: const EdgeInsets.only(right:10),
                          child: Container(      
                            height: 30,
                            width: 120,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.brown,),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                              child: Text("Milk Chocolate",style:  TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ),
                  
                         Padding(
                          padding: const EdgeInsets.only(right:10),
                          child: Container(      
                            height: 30,
                            width: 120,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.brown,),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(12, 5, 0, 0),
                              child: Text("Dark Chocolate",style:  TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ),
                  
                         Padding(
                          padding: const EdgeInsets.only(right:10),
                          child: Container(      
                            height: 30,
                            width: 120,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.brown,),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                              child: Text("white Chocolate",style:  TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ), 
                        
                        Padding(
                          padding: const EdgeInsets.only(right:10),
                          child: Container(      
                            height: 30,
                            width: 120,
                           decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.brown,),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                              child: Text("white Chocolate",style:  TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.justify,),
                            ),
                          ),
                        ),
        
                      ],
                    ),
                  ), 
                   const SizedBox(height:15),
                   Row(
                     children: const [
                       SizedBox(width:22),
                       Text("Size",style:   TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                       SizedBox(width:215),
                       Text("Quantity",style:   TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                     ],
                   ),
                    const SizedBox(height:15),
        
                   Row(
                     children: [
                      const SizedBox(width:22),
                       CircleAvatar(   
                        //radius: 17,
                        backgroundColor: Colors.brown,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.plus_one,color: Colors.white,), )),
                         
                          const SizedBox(width:20),
                         CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 196, 196, 196),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.h_plus_mobiledata,color: Color.fromARGB(255, 97, 97, 97),), )),
                           
                          const SizedBox(width:20),  
                         CircleAvatar(
                        backgroundColor:const Color.fromARGB(255, 196, 196, 196),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.local_parking_rounded,color:Color.fromARGB(255, 97, 97, 97),), )),
                        
                         const SizedBox(width:70),
                         CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.minimize,color: Colors.white,textDirection: TextDirection.rtl,),)),
                         
                         const SizedBox(width:20),
                          const Text("1",style:  TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                          
                           const SizedBox(width:20),
                         CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,), )),
                     ],
                     
                   ),
                   const Padding(
                     padding: EdgeInsets.only(right:280,top:50),
                     
                     child:  Text("Price"),
                   ),  
                   
        
                   Row(
                     children:   [
                       const  SizedBox(width: 40,),
                       const Text("\$ 4.20",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     
                    const  SizedBox(width: 130,),
                     Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(  
                         borderRadius: BorderRadius.circular(40),
                         color: Colors.brown,),

                         
                        child: const Padding(
                          padding: EdgeInsets.only(top:13.0),
                          child:Text("Buy Now",style: TextStyle(color: Colors.white,fontSize:18),textAlign:TextAlign.center),
                        )
        
                       )  
                     ],
                     
                   )
               ],
              
            )
            
          ]
          
          ),
        ),
        
      ),
      
    );
  }
}