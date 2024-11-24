import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';
import 'package:soraya/home.dart';

  class Signup extends StatelessWidget {
    const Signup({super.key});

    @override
    
    Widget build(BuildContext context) {
      return Scaffold(
        // appBar: AppBar(
          // title: const Text('SignUp Page')
        // ),
        body:GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },

        child:SizedBox.expand(
          child: Stack(
          // Padding(padding: const EdgeInsets.only(top:2.0),
          children: [
            Transform.rotate(
            angle: 3.14159, // Full rotation (360 degrees)
            child: Image.asset("assets/images/welcome_bg.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SignupForm(),
          ],
          ),
        ),
      ),);
      
    }
  }

class SignupForm extends StatefulWidget {

  @override
  
  State<SignupForm> createState() => _SignupFormState();
  }
  
  class _SignupFormState extends State<SignupForm>{
    bool ischecked= false;
    @override
    
    Widget build(BuildContext context) {
      final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;
      return
        SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 100),
               Center(
                 child: Container(
                    child: Text("Register", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
                  ),
               ),
              
              SizedBox(height: 12),
               Container(
                child: Text('Create your account', style: TextStyle(fontSize: 17),),
               ),
          
          SizedBox(height: 45),  
          Column(
                
            children: [
              Container(
                  width: 280,
                    child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outlined),
                          labelText: 'Name',
                          hintText: 'JohnDoe',
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                               ),
                
              Container(height:20), 
              Container(
                width: 280,
                child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Username',
                      hintText: 'JohnDoe@gmail.com',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ),
          
              Container(height:20),
              Container(
                width: 280,
                child: TextField(
                  obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Phone No.',
                      // hintText: '',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ),
             
              Container(height:20),
              Container(
                width: 280,
                child: TextField(
                  obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      // hintText: '••••••••',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: secondaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ), ],),
              SizedBox(height: 22),
              Container(
                width: 300,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [                                    
                         GestureDetector(
                           onTap: () {
                             setState(() {
                               ischecked=!ischecked;
                             });
                           },
                           child: Icon(
                            ischecked? Icons.check_box: Icons.check_box_outline_blank,
                            color: Colors.green,
                           ),
                      ),
                      SizedBox(width:8),
                      Expanded(
                  child: Text('By signing up, you agree to our Terms and Conditions',overflow: TextOverflow.visible, softWrap: true, style: TextStyle(color: Colors.grey[850]),)),
                    ],
                  ),
              ),
          
              SizedBox(height: 22),  
              ElevatedButton( style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(Size(250, 48)),
              backgroundColor: WidgetStatePropertyAll(primaryColor),
            ),
          child: Text('Register',style: TextStyle(color: Colors.white),),
          onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
          },),
           Row(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[850]),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
                
              }, child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),style: TextButton.styleFrom(
          padding: EdgeInsets.zero,))
            ],
           )              
            ],
          ),
        );
    }
  } 
  




