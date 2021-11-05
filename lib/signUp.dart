import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 
 var _formKey = GlobalKey<FormState>();
 var isLoading = false;
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       
       
      body:SingleChildScrollView(
        child: Column(
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
                    child: Form(
                      key: _formKey,
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
                            onFieldSubmitted:(value){},
                            validator:(value){
                            if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
                            
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
                          onFieldSubmitted:(value){},
                          validator:(value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null; 
                          }
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) =>SignUp()
                            )
                            );
                          },
                           child:Text("sign up",style: TextStyle(color: Colors.white),),
                          
                           
                           )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
   
     );
  }
}

class Order{
  late String item;
  late int email;
}