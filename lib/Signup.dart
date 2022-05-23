import 'package:flutter/material.dart';
import 'package:signup/main.dart';

import 'Login.dart';



class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var textcolor = Colors.black54;
  var maincolor = Color(0xFF0288D1);
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    bool isChecked = false;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:10),
                          child: Container(
                            height: 70,
                            width: 70,
                            child:Image.asset("assets/logo.png"),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Sign Up",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                        SizedBox(height: 13,),
                        Text("See your growth and get consulting support!",style: TextStyle(color:textcolor),),
                      ],
                    ),
                  ),
                  SizedBox(height: 45,),
                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1,
                          ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height:23,
                            width: 30,
                            child:Image.asset("assets/google.png"),
                          ),
                         Text("Sign in with Google",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text("or Sign in with Email",style: TextStyle(color: textcolor),)),
                  SizedBox(height: 20,),
                  Text("Email*",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        cursorColor: maincolor,
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.email,
                              color:maincolor,
                            ),
                          ),
                          hintText: "mail@website.com",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Password*",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        obscureText: _obscureText,

                        cursorColor: maincolor,
                        decoration: InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.lock,
                              color: maincolor,
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: maincolor,
                            ),
                          ),
                          hintText: "Password",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                       Checkbox(value: isChecked,
                           onChanged: (bool? value) {
                             setState(() {
                               isChecked = value!;
                             });
                           }
                       ),
                        Text("Remember me",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold),

                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                  shape: RoundedRectangleBorder(
                   borderRadius:
                    BorderRadius.all(Radius.circular(43.0))),
                   elevation: 8.0,
                   minWidth: 2000.0,
                   height: 64,
                   color:maincolor,
                   onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) => const Login()),);},
                 child: Text(
                   'LOGIN',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
                  Container(
                    child: Row(
                      children: [
                        Text("Not register yet?",style: TextStyle(fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){},
                        child:Text("Create an Account",),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
