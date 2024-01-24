import 'package:flutter/material.dart';
import 'package:task1/practice/project/signup.dart';
class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _FormExampleState();
}

class _FormExampleState extends State<Signinpage> {

  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffa18cd1  ),
                  Color(0xfffbc2eb ),
                ])
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                ),
                Column(
                  children: [
                    Text("Have a account? Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
                          child: Container(
                             height: screenSize.height * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Form(
                              key: _key,
                              child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        hintText: 'Enter your Email ',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.purple,
                                                width: 2,
                                                style: BorderStyle.solid
                                            )
                                        ),
                                      ),
                                      validator:(value){
                                        if(value!.isEmpty){
                                          return "please Enter your Email address";
                                        }
                                        else if(!isValidEmail(value))
                                        {
                                          return "please Enter valid Email";
                                        }
                                        else{
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        hintText: 'Enter your Password ',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.purple,
                                                width: 2,
                                                style: BorderStyle.solid
                                            )
                                        ),
                                      ),
                                      validator:(value){
                                        if(value!.isEmpty){
                                          return "please Enter your Password";
                                        }
                                        else if(!isValidPassword(value)){
                                          return "please Enter Valid Password";
                                        }
                                        else{
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  ElevatedButton(
                                      onPressed: (){
                                        if(_key.currentState!.validate()){
                                          showDialog(context: context,
                                              builder: (BuildContext context){
                                                return  Center(
                                                  child: Container(
                                                    height: 300,
                                                    width: 300,
                                                    child: AlertDialog(
                                                      title: Center(child: Text('Login Succesful',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                                      content: Center(
                                                        child: Container(
                                                            height: 70,
                                                            width: 70,
                                                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXkKUY4ViRoLQjaWqfmJnRnEmIBlznXdda9Q&usqp=CAU")),
                                                      ),
                                                      actions: [
                                                        Center(
                                                          child: TextButton(onPressed: (){
                                                            Navigator.of(context).pop();
                                                          },
                                                              child: Text("ok",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                                        )
                                                      ],
        
                                                    ),
                                                  ),
                                                );
                                              }
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.purple.shade100,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)
                                        )
        
                                      ),
                                      child: Text("Sign in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Text("Dont have an account?",style: TextStyle(fontSize: 18),),
                                            Row(
                                              children: [
                                                InkWell(
                                                    onTap: (){
                                                      Navigator.push(context,MaterialPageRoute(builder:(context)=>SignUppage()));
                                                    },
                                                    child: Text("Register",style: TextStyle(fontSize: 18,color: Colors.green),))
                                              ],
                                            ),
        
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    children: [
                                      ElevatedButton(onPressed: (){

                                      },
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 15,right: 50),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width:40,
                                                    height: 30,
                                                    child: Image.network("data:image/jpeg;base64,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")),
        
                                                Row(
                                                  children: [
                                                    Text("Sign Up with Google")
                                                  ],
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  bool isValidEmail(String email) {
    final emailRegex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }
  bool isValidPassword(String password){
    final passwordRegex =
    RegExp(r'^12345');
    return passwordRegex.hasMatch(password);
  }
}
