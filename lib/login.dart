import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/common/route_constants.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Center(
        child: Container(
          width: kIsWeb ?  MediaQuery
              .of(context)
              .size
              .width / 1.5 : MediaQuery.of(context).size.width,
          height: kIsWeb ? MediaQuery
              .of(context)
              .size
              .height / 1.5 : MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Wrap(
                children: [
                  FractionallySizedBox(

                    widthFactor: kIsWeb? 0.5:1,
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
                        padding: const EdgeInsets.only(top: 50.0, left: 20,right: 20),
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
                              const SizedBox(height: 10),
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
                              SizedBox(height: 20),
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
                                    color: Colors.blueAccent,

                                  ),)
                                ],
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "**********",
                                  border:OutlineInputBorder(),

                                  // labelText: "email"

                                ),

                              ),
                              SizedBox(height: 20,),
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(),
                                  onPressed: ()=>{
                                    Navigator.pushNamed(context, RouteConstants.initialRoute)
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(50,10,50,10),
                                    child: Text("login"),
                                  ),
                                ),
                              )
                              
                              // RichText(text: "Do not have a account yet?")
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  kIsWeb ? FractionallySizedBox(
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
                  ):SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
