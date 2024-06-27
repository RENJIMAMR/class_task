import 'package:class_task/main.dart';
import 'package:class_task/view/home_screen/home_screen.dart';
import 'package:class_task/view/registration_screen/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });
  // this.storedEmail, this.storedPassword});
  // final String? storedEmail;
  // final String? storedPassword;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
    GlobalKey<FormState> _passkey1 = GlobalKey<FormState>();

    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passcontroller1 = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Sign  in to Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _emailkey,
                child: TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        value.contains('@')) {
                      return null;
                    } else {
                      return 'Invalid Email ID';
                    }
                    ;
                  },
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(.8),
                            width: 2,
                          )),
                      hintText: 'Your Email Address',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(.8),
                        fontSize: 20,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _passkey1,
                child: TextFormField(
                  controller: passcontroller1,
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        value.length >= 5 &&
                        value.length <= 10) {
                      return null;
                    } else {
                      return 'Invalid Password ';
                    }
                    ;
                  },
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(.8),
                            width: 2,
                          )),
                      hintText: 'Your Password',
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        size: 20,
                        color: Colors.grey.withOpacity(.8),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(.8),
                        fontSize: 20,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  if (_emailkey.currentState!.validate() &&
                      _passkey1.currentState!.validate()) {
                    if (emailcontroller.text == storedEmail &&
                        passcontroller1.text == storedPassword) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.red,
                        content: Text(
                          'Invalid Credentials',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ));
                    }
                  }
                  ;
                },
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 124, 209),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 190,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Reg_Screen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
