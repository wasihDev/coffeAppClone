import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key,
  required this.picture,
    required this.title,
    required this.title2, 
    required this.price,
    required this.service }) : super(key: key);

    final String picture;
    final String title;
    final String title2;
    final String price;
    final String service;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        centerTitle: true,
       title: const Text("Cart",
       textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 18,
           color:Colors.black,
           fontWeight: FontWeight.bold)), 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           const Padding(
             padding: EdgeInsets.only(right:280),
             child: Text("Items (10)",
             style: TextStyle(
               fontSize: 18,
               color:Colors.black,
               fontWeight: FontWeight.bold)),
      
           ),
           const SizedBox(
            height: 20,
           ),
           Center(
             child: Container(
             
              height: 150,
              width: 380,
              child: Card(
                elevation: 3,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Stack(
                 
                  children: [
                    Positioned(child: 
                    Padding(
                      padding: const EdgeInsets.only(top:20,left:20),
                      child: Container(
                            height: 100,
                            width: 100,   
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(22),
                           color: const Color(0xFFFF9000),
                            image:   DecorationImage(
                              alignment: Alignment.center,
                            image: AssetImage(picture),
                            fit:BoxFit.cover),),
                            
                            ),
                    ),
                    ),
                    Positioned(
                      child: Column(
                        
                      children:  [
                        const SizedBox(height: 23),
                         Padding(
                          padding:  const EdgeInsets.only(left:40,bottom: 2),
                          child:  Text("$title",style:const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                         Padding(
                          padding:  const EdgeInsets.only(right:16.0,bottom:8),
                          child: Text("$title2",style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                         Padding(
                          padding:  const EdgeInsets.only(left:6.0,bottom:0),
                          child: Text("US \$$price",style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                             Padding(
                              padding: EdgeInsets.only(left:150.0),
                              child:   Text("Delivery fee US \$$service",style: TextStyle(fontSize: 13,color:   Color.fromARGB(255, 241, 138, 3),fontWeight: FontWeight.normal)),
                            ),
                          IconButton(onPressed: (){}, 
                          icon: const CircleAvatar(
                            backgroundColor: Colors.brown,
                            radius: 14,
                            child:  Icon(Icons.add,size:12,color: Colors.white), )),
      
                           const Text("1"),
      
                            IconButton(onPressed: (){}, 
                          icon: const CircleAvatar(
                            backgroundColor: Colors.brown,
                            radius: 14,
                            child:  Icon(Icons.add,size:12,color: Colors.white), ))
                          ],
                        )
                      ],
                    ))
      
      
                  ],
                ),
              ),
             ),
           )
           
          ],
        ),
      ),
      
    );
  }
}


