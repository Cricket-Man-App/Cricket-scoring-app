import '../screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = './login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
  TextStyle linkStyle = TextStyle(color: Colors.red);
  // bool _acceptPrivacyPolicy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Login Screen'),
          ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: [
              new Container(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Cricket Man',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    )
                  ],
                ),
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
                          'Sign In',
                          style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email Id', 
                            ),
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Color(0xFFF00), fontSize: 14),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Color(0xFFF00), fontSize: 14),
                        ),
                        SizedBox(height: 25),
                        
                        RaisedButton(
                          onPressed: () {
                            print('pressed');
                          },
                          color: Colors.red,
                          child: Text('Log in',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: RichText(
                              text: TextSpan(style: defaultStyle, children: [
                            TextSpan(text: 'New user?'),
                            TextSpan(
                                text: 'Register',
                                style: linkStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context)
                                        .pushNamed(RegisterScreen.routeName);
                                    // print('pressed');
                                  })
                          ])),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
