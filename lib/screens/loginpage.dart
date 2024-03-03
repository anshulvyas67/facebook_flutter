
import 'package:app/material/global.dart';
import 'package:app/material/routes.dart';
import 'package:flutter/material.dart';


class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child:Container(
            padding: EdgeInsets.symmetric(horizontal:18),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: backgroundcolor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const Spacer(flex:5),
                Image(image: AssetImage("assets/images/facebooklogo.png"),
                height: 45,),
                SizedBox(height: 40,),
                Container(
                  color: Colors.white,
                  child: Column(children: [
                SizedBox(
                  
                  height: 53,
                   
                   
                  child: TextFormField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(

                          color: Colors.white,
                        ),
                        
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        
                      ),
                      hintText: "Email or phone number",
                      hintStyle: TextStyle(fontSize: 15,color: typcolor)
                    ),
                  ),
                ),
                 SizedBox(
                  
                  
                  height: 53,
                   
                   
                  child: TextFormField(
                    
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        
                      ), 
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15,color: typcolor)
                    ),
                    obscureText: true,
                  ),
                ),
                  ],),
                ),  
               SizedBox(height: 10,),
                InkWell(
                onTap: ()=>{
                  Navigator.of(context).pushNamed(MyRoutes.HomePageRoute)
                },
                child:Container(
                  alignment: Alignment.center,  
                  height: 45,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                    color: logcolor,
                     ),
                  child: Text("Log In",style: TextStyle(color: Colors.white, fontSize: 16),),
                ),  
                ),
               Spacer(flex: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up for Facebook",style: TextStyle(color:Colors.white),),
                  ],),
                 SizedBox(height: 30,),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Need Help?",style: TextStyle(color:Colors.white),),
                  ],),
                Spacer(flex: 2,),
              ],
            ),
        ),
        ),
        
      ),
    );
  }
}