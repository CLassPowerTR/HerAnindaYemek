import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotLoginScreen extends StatelessWidget {
  NotLoginScreen({super.key});
  String headerText = "Her Anınızda,\nLezzet \nKapınızda";

  void _navigateToLogin(BuildContext context) {
    context.go('/login');
  }

  void _navigateToRegister(BuildContext context) {
    context.go('/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
                'lib/assets/image/freshBeefBurger.png'),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.55,
            child: Text(
              maxLines: 3,
              softWrap: true,
              headerText,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 54,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                      onPressed: () => _navigateToRegister(context),
                      child: Text(
                        'Üye Ol',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 54,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.black),
                      ),
                      onPressed: () => _navigateToLogin(context),
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
