import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:her_aninda_yemek/features/auth/presentation/widgets/buttons.dart';
import 'package:her_aninda_yemek/features/auth/presentation/widgets/textFields.dart';
import 'package:provider/provider.dart';
import '../../domain/auth_provider.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Positioned(
                  left: 20,
                  top: 50,
                  child: IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                    color: Colors.grey,
                    onPressed: () {
                      context.go('/');
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    'lib/assets/image/converted.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      "Üye Ol",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      _text("Adınız"),
                      textField(
                        context,
                        hintText: 'Adınız',
                        //labelText: 'Adınız',
                        controller: _usernameController,
                        keyboardType: TextInputType.text,

                        obscureText: false,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      _text("E-mail"),
                      textField(
                        context,
                        hintText: 'E-mail',
                        //labelText: 'E-mail',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      _text("Şifre"),
                      textField(
                        context,
                        hintText: "Şifre",
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: false,
                        showSuffixIcon: true,
                        onTap: () {},
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 60,
                      child: CustomElevatedButton(
                          text: "Üye Ol",
                          onPressed: () {
                            Provider.of<AuthProvider>(context, listen: false)
                                .register(
                              _usernameController.text,
                              _passwordController.text,
                              _emailController.text,
                            );
                          })),
                  Text("yada"),
                  Row(
                    spacing: 25,
                    children: [
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                              height: 57, child: GoogleElevatedButton())),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                              height: 57, child: GoogleElevatedButton()))
                    ],
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Zaten bir hesabınız var mı? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: "Giriş Yap",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.go('/login');
                        },
                    ),
                  ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _text(String text) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    );
  }
}
