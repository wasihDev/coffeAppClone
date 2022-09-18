import 'package:coffee_app/screens/homeScreen/firstListView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    
    TabController _tabcontroller= TabController(length: 1, vsync: this);


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 0, 0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children:  [
                  const Icon(Icons.home,color: Colors.brown,size: 30,),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("images/1.png"),
                      radius: 16,),
                  )
                ],
              ),
            ),
        
            //   Text
        
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 200, 0),
              child: Text("Find the best",
              style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold),
              ),
            ),
        
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 120, 0),
              child: Text("Coffee to your taste",
              style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold),
              ),
            ),
        
        
            // search panel
        
        
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20,left: 30),
              child: Row(
                children: <Widget>[
         
                  Positioned(
                      
                    child: Card(
                      child: Container(
                        height: 54,
                        width: 280,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 3), // changes position of shadow
                       
                         ),
                        ],      
                         ),
                        child: const Padding(
                       padding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                          
                         child: TextField(
                      decoration:InputDecoration(
                      icon: Icon(Icons.search,
                      color: Color.fromARGB(255, 219, 219, 219),),
                      hintText: "Find your coffee...",
                      hintStyle: TextStyle(
                      color: Color.fromARGB(255, 199, 199, 199)
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                      )
                       ),
                      ),         
                     ),
                    )
            
              ),
                
              // Icon Button
        
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor:  Colors.brown,
                  child: IconButton(
                    highlightColor: Colors.grey,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: (){}, 
                  icon: const Icon(Icons.short_text_rounded,size: 30,)
                  ),
                ),
              )
            ],
            ),
            ) ,
        
            Padding(
              padding: const EdgeInsets.only(bottom:12),
              child: TabBar(
                  controller: _tabcontroller,
                  labelColor: const Color.fromARGB(255, 95, 51, 1),
                  unselectedLabelColor: Colors.grey,
                  //isScrollable: true,
                 labelPadding: const EdgeInsets.only(right:6,top:5),
                 indicator:CircleTabIndicator (color:Colors.brown,radius:6),
                 tabs:const [
                  Tab(text: "Espresso",),
                  // Tab(text: "Latte",),
                  // Tab(text: "Cappuccino"),
                  // Tab(text: "Cafetiere"),
                ]),
            ),
        
               Container(
              
              margin: const EdgeInsets.only(left:20),
             width: double.maxFinite,
              height: 250,
             child:  TabBarView(
             controller: _tabcontroller, children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
      
                    // ListView.builder(
                    //   itemCount: ,
                    //   itemBuilder:( _,index)),
                    listView( 
                    pic: "images/coffee1.jpg", 
                    rating: 4.1, 
                    title: "Espresso",
                     descriptions: "with Milk", 
                     price: 6.90),
                      listView( 
                    pic: "images/coffee2.png", 
                    rating: 3.5, 
                    title: "Capachinoo",
                     descriptions: "with cheese",
                     price: 4.9),
                      listView( 
                    pic: "images/coffeecup.png", 
                    rating: 3.1, 
                    title: "Espresso",
                     descriptions: "with Milk", 
                     price: 2.5),
                      listView( 
                    pic: "images/coffee2.png", 
                    rating: 2.1, 
                    title: "Espresso",
                     descriptions: "with Milk", 
                     price: 6.90),
                  ],
                ),
              )
            ],
            )
           ),
            const SizedBox(height: 10,),
           const Padding(
             padding: EdgeInsets.only(right:200),
             child: Text("Special for you",
             style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 3, 3, 3))),
           ),
           const SizedBox(height: 10),



           Container(
            height: 200,
            width: 360,
            
            child: Card(
              color: Colors.brown, 
              elevation: 3,
              shape:  RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20) ),

                child:Stack(
                  children: [
                Positioned(
                  top:15,
                  bottom: 15,
                  left: 15,
                  child:Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xFFFF9000),
                    image:  const DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage("images/coffee2.png"),
                    fit:BoxFit.cover),),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left:180,top:60),
                  child: Column(
                    
                    children: const [
                      Text("Specaillly mixed and",
                      style: TextStyle(fontSize: 16,color:Colors.white)),
                      Text("Brewed which you",
                      style: TextStyle(fontSize: 16,color:Colors.white)),
                     Text("you must try!",
                      style: TextStyle(fontSize: 16,color:Colors.white))
                    ],
                  ),
                ),
               
                ],
                )
            ),

           )
        ],
        ),
      ),
                
        
          
 

//                 ListView.builder(
//                 itemCount: 4,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (_,index){
//                 return Container(
//                   padding: const EdgeInsets.all(16),
//                   margin: const EdgeInsets.only(right:20),
//                   height:250,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       image: const DecorationImage(
//                       image: AssetImage("images/coffee1.jpg"),
//                       fit:BoxFit.cover),
                      
//                   ),
                    
//                        child: Stack(
//                         alignment: AlignmentDirectional.topEnd,
//                         children:  [
//                           Column(
//                              children: const [
                             
//                               Icon(Icons.star_outlined,size: 24,
//                               color: Colors.orange,),
//                               Text("4.5",style: TextStyle(
//                               color: Colors.white),)
//                             ],
//                           ),
                          

    
//                 ]
//                 );)
                
         
// },
//             ),
//              ],
//              ),
//     )
//     );
    
    
);
}
}


class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;

  CircleTabIndicator({required this.color,required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter (color:color, radius:radius);
  }
}

class _CirclePainter extends BoxPainter{
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas ,Offset offset, ImageConfiguration conf){
    late Paint _paint;
    _paint =Paint()..color=color;
    _paint=_paint..isAntiAlias=true;
    final Offset circleOffset=offset+Offset(conf.size!.width/2,conf.size!.height-radius);
    canvas.drawCircle(circleOffset, radius,_paint);


  }
}