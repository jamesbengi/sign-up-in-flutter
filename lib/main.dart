import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lukukenya/signUp.dart';
import 'package:url_launcher/url_launcher.dart';
 void main() => runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   )
 );
 class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
 
   @override
   _HomePageState createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   
   _sendingSMS() async {
  const url = 'sms:9876543210';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_sendingmails() async {
  const url = 'mailto:jamesbengi21@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 _phoneCall() async {
  const url = 'tel:9876543210';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
   @override
  
  
   Widget build(BuildContext context) {
      return Scaffold(
      drawer: Drawer(
      
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("James Bengi",style: TextStyle(color: Colors.black12,fontSize: 15,),),
               accountEmail:Text("jamesbengi21@gmail.com",style: TextStyle(color: Colors.black12,fontSize: 15),),
               otherAccountsPictures: <Widget>[
                 Icon(Icons.bookmark_border)
               ],
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/gymit.png"),
                   fit: BoxFit.cover
                 )
               )
               ),
               ListTile(
                 leading: Icon(Icons.email,color: Colors.brown,),
                 title: Text("Email Us"),
                 onTap: _sendingmails
               ),
               Divider(color: Colors.black,),
                ListTile(
                 leading: Icon(Icons.call,color: Colors.blue,),
                 title: Text("Call Us"),
               onTap: _phoneCall

               ),
            
               Divider(color: Colors.black,),
               ListTile(
                 leading: Icon(Icons.message,color: Colors.blue,),
                 title: Text("Message Us"),
                 onTap: _sendingSMS
                   
            
               ),

          ],
        ),
        
        
      ),
     
      appBar: AppBar(
        title: Text("lukuzone",style: TextStyle(color: Colors.black54),),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context) =>SignUp()
             )
             );
             
          },
           child: Text("SignUp",style: TextStyle(color: Colors.black),),
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all(Colors.white54),
             
           ),
           
           )
        ],
      ),
      
      body:SafeArea(
        
        child: Container(
          child: Padding(
            
            padding: const EdgeInsets.all(15.0),
            
            child: Container(
              
              child: SingleChildScrollView(
                child: Column(
                   
                  children:<Widget> [
                    TextFormField(
                      decoration:InputDecoration(
                        hintText: "search something",
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(28))
                  
                        
                      )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView(
                        children:<Widget> [
                          CarouselSlider(items: [
                            Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/lee.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/yoka.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/nike.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/sply.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/draw.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            )
                          ],
                           options: CarouselOptions(
                             autoPlay: true,
                             height: 180,
                             enlargeCenterPage: true,
                             aspectRatio: 16/9,
                             autoPlayCurve: Curves.fastOutSlowIn,
                             enableInfiniteScroll:true,
                             viewportFraction: 0.8,
                             autoPlayAnimationDuration: Duration(microseconds: 800)
                           )
                           )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Our Products",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       ElevatedButton(onPressed: (){},
                        child: Text("See All",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          
                          shape: RoundedRectangleBorder(
                        
                            borderRadius: BorderRadius.circular(20),
                            
                          ),
                          shadowColor:Colors.blue,
                        
                        ),
                        
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                  Container(
                    height:200,
                    child: Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage("assets/yoka.jpg"),
                          
                          )
                          
                          
                          
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Container(
                    height:200,
                    child: Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: <Widget>[
                          
                          
                          
                          
                          
                        ],
                      ),
                    ),
                  ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
   }

  
 }