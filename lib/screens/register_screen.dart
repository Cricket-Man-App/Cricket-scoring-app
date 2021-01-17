//package import
import '../screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = './register';
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Colors.red);
    return Scaffold(
        appBar: AppBar(
            // title: Text('Register'),
            ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    'Cricket Man',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30),
                  )),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topCenter, colors: [
                        Colors.red[700],
                        Colors.red[600],
                        Colors.red[500],
                      ]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
                Container(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email Id',
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'Create Account',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.red,
                            ),
                          ),
                          RichText(
                              text: TextSpan(style: defaultStyle, children: [
                            TextSpan(text: 'Already having an Account?'),
                            TextSpan(
                                text: 'Sign In',
                                style: linkStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context)
                                        .pushNamed(LoginScreen.routeName);
                                    // print('pressed');
                                  })
                                ]
                              )
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
