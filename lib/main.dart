import 'package:flutter/material.dart';

 void main() => runApp(
   const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   )
 );
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer: Drawer(

       ),
       
      body:Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 40),
                  child: Card(
                    shadowColor: Colors.red,
                    child: Text("lukuzone",style:TextStyle(color: Colors.black87,fontSize: 35,fontWeight: FontWeight.w400),
                    ),
                    
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 40),
                  child: Text("sign up with",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      CircleAvatar(
                        radius: 20,
                        child: IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.facebook) ,
                        ),
                      ),
                       
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children:<Widget> [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "email",
                          hintText: "enter your email",
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide:BorderSide(color: Colors.black) ,

                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(28),
                            borderSide:BorderSide(color: Colors.black) ,
                            gapPadding: 10
                          )
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "password",
                          hintText: "enter your password",
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide:BorderSide(color: Colors.black),

                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(28),
                            borderSide:BorderSide(color: Colors.black),
                            gapPadding: 10
                          )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(onPressed: (){},
                       child:Text("sign up",style: TextStyle(color: Colors.white),),
                      
                       
                       )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
   
     );
   }
 }