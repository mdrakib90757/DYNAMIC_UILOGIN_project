import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  bool  obscureIndex=true;
  final formState=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.2,
                  0.5,
                  0.8,
                  0.7
                ],


                colors: [
                  Colors.blue.shade50,
                  Colors.blue.shade100,
                  Colors.blue.shade200,
                  Colors.blue.shade300,
                ])
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(

                    height: 620,
                    width: 500,

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.2,
                            0.5,
                            0.8,
                            0.7
                          ],


                          colors: [
                            Colors.blue.shade50,
                            Colors.blue.shade100,
                            Colors.blue.shade200,
                            Colors.blue.shade200
                          ]),
                    ),
                    child: SafeArea(
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 50),
                              child: GestureDetector(

                                child: Image.asset("assets/image/userlogo.png",height: 60,),
                              ),
                            ),

                            SizedBox(height: 25,),


                            const Text("Sign in with email",style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),

                            SizedBox(height: 10,),


                            Text("Make a new doc to bring your words, data \n          and teams together. For free ",style: TextStyle(
                                color: Colors.black.withOpacity(.8),
                                fontSize: 15
                            ),),

                            SizedBox(height: 30,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Enter your email address";
                                  }else{
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    fillColor: Colors.grey.shade300,
                                    filled: true,
                                    prefixIcon: Icon(Icons.email_outlined),
                                    hintText: "Email"
                                ),),
                            ),

                            SizedBox(height: 10,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Enter your Password";
                                  }else{
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    fillColor: Colors.grey.shade300,
                                    filled: true,
                                    prefixIcon: Icon(Icons.lock_outline),
                                    hintText: "Password",
                                    suffixIcon: IconButton(onPressed: () {
                                      setState(() {
                                        obscureIndex=!obscureIndex;
                                      });
                                    }, icon: Icon(obscureIndex?Icons.visibility_off:Icons.visibility))
                                ),
                                obscureText: obscureIndex,
                                obscuringCharacter: "*",
                              ),
                            ),
                            SizedBox(height: 15,),

                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Forget Password?",style: TextStyle(
                                      color: Colors.black
                                  ),),


                                ],
                              ),
                            ),

                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextButton (
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.black.withOpacity(.7),
                                      minimumSize: Size(double.infinity, 50)
                                  ),
                                  onPressed: () {
                                    if(formState.currentState!.validate()){
                                      setState(() {

                                      });
                                    }


                                  }, child:const Text("Get Started",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,

                              ),)),
                            ),
                            SizedBox(height: 20,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text("or sign in with",style: TextStyle(
                                        color: Colors.black45
                                    ),),
                                  ),

                                  const Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.black45,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 20,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize: Size(100, 50)

                                      ),
                                      onPressed: () {

                                      }, child: Image.asset("assets/image/google logo.png",height: 25,)),
                                ),


                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize: Size(100, 50)

                                      ),
                                      onPressed: () {

                                      }, child: Image.asset("assets/image/facebook.png",height: 25,)),
                                ),

                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize: Size(100, 50)

                                      ),
                                      onPressed: () {

                                      }, child: Image.asset("assets/image/anddroid logo.png",height: 28,)),
                                )


                              ],)
































                          ],
                        )


                    ),
                  ),
                ),



              ],
            ),
          ),
        ),


      ),
    );
  }
}
