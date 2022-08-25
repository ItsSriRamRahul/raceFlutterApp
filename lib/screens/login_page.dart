// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController(); 
    @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    
    return(
      Scaffold(body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex:1),
              Text('Hello Again !',style: GoogleFonts.poppins(fontSize: 42,fontWeight: FontWeight.w600,)),
              Text('Lets Sport!',style: GoogleFonts.poppins(fontSize: 32)),
              SizedBox(height: 30,),
              Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onChanged: (val)=>{
                      
                    },
                    controller: emailController,
                    style: const TextStyle(color:Colors.black),
                     decoration: const InputDecoration(
                    border: InputBorder.none,
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Colors.black, ),
                 
                  )
                  ),
                  
                  
                ),
              ),
              const SizedBox(height: 20,),
               Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onChanged: (val)=>{
                      
                    },
                    controller: passwordController,
                    style: const TextStyle(color:Colors.black),
                     decoration: const InputDecoration(
                    border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black, ),
                 
                  )
                  ),
                  
                  
                ),
              ),
              SizedBox(height: 30,),
              Container(height: 50,width: 150,
              
              decoration: BoxDecoration(color:Color.fromARGB(255, 48, 124, 171),borderRadius: BorderRadius.circular(15))
             , 
              child: Center(child: Text("login",style: GoogleFonts.bebasNeue(fontSize: 24,letterSpacing: 4),)),)
              ,Spacer(flex:1)
            ],
          ),
        ),
      ),)
    );
  }
}