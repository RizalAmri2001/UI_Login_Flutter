import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.6),
          body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              )),
              child: Center(
                child: SingleChildScrollView(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //const SizedBox(height: 50),
                        
                        Container(
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(12), color: Colors.black.withOpacity(0.3), ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal:10.0, vertical:5.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontFamily: 'Comic Sans MS',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        //logo
                        const SizedBox(height: 30),
                        Image.asset(
                          'assets/login.png',
                          height: 60, 
                          width: 60,
                        ),

                        const SizedBox(height: 20),
                        // Welcome Text
                        Container(
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10), color: Colors.black.withOpacity(0.3), ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8.0, vertical:5.0),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    "Welcome back you, you've been missed!",
                                    textStyle: const TextStyle(
                                       color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Comic Sans MS',
                                    ),
                                    speed: const Duration(milliseconds:100 ),
                                  ),
                                ],
                                totalRepeatCount: 4,
                                pause: const Duration(milliseconds: 1000),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                              ),
                            )
                            ),
                        //text
                        const SizedBox(height: 50),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          //email textfield
                          child: TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Data tidak boleh kosong';
                              }
                              return null;
                            },
                            controller: email,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 10.0),
                              labelText: "Email",
                              labelStyle: const TextStyle(fontSize: 14),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              fillColor: Colors.blueGrey.shade50,
                              filled: true,
                              hintText: "anda@email.com",
                              prefixIcon: const Icon(Icons.email_rounded)
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          //password textfield
                          child: TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Data tidak boleh kosong';
                              }
                              return null;
                            },
                            controller: password,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 10.0),
                              labelText: "Password",
                              labelStyle: const TextStyle(fontSize: 14),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              fillColor: Colors.blueGrey.shade50,
                              filled: true,
                              hintText: "*******",
                              prefixIcon: const Icon(Icons.lock)
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {
                                //
                              },
                              child: const Text(
                                "Lupa Password?",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'Comic Sans MS'),
                              )),
                          // ),
                        ),
                        const SizedBox(height: 25),
                        //Login button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: HexColor('34407D'),
                                borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         Container(
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10), color: Colors.black.withOpacity(0.3), ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("- or -", style: TextStyle(color: Colors.white70),),
                            )),
                        
                        const SizedBox(
                          height: 20,
                        ),
                        //login dengan google
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.white, 
                            foregroundColor: Colors.black, 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                  color: Colors.grey), // Warna border abu-abu
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                          ),
                          onPressed: () {},
                          child:  Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                            Image.asset("assets/google.png", height: 24, width: 24,),
                              const SizedBox(width: 12),
                              const Text(
                                'Login with Google',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        )
                       
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
