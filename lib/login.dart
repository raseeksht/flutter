import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Center(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 1.5,
          height: MediaQuery
              .of(context)
              .size
              .height / 1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Wrap(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10,right: 10),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 5),
                              RichText(
                                // textWidthBasis: TextWidthBasis.longestLine,
                                  text: TextSpan(
                                      text: "Doesn't have a account yet?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: "Sign up",
                                            style: TextStyle(
                                                color: Colors.pink,
                                                decoration: TextDecoration
                                                    .underline))
                                      ])),
                              SizedBox(height: 10),
                              Text("Email", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "john.doe@example.com",
                                  hintStyle: TextStyle(fontSize: 15),
                                  border:OutlineInputBorder(),
                                  // labelText: "email"

                                ),

                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Password"),
                                  Text("Forget password",style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blueAccent
                                  ),)
                                ],
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "",
                                  border:OutlineInputBorder(),
                                  // labelText: "email"

                                ),

                              )
                              
                              // RichText(text: "Do not have a account yet?")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/1.jpg'),
                          // Replace with your image path
                          fit: BoxFit
                              .cover, // You can adjust the fit property as needed
                        ),
                      ),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      child: SvgPicture.network('https://svgur.com/i/yCT.svg'),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
