import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ClipPath(
              clipper: CustomContainer(),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.8,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.blue[800],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.key_outlined,
                                color: Colors.blue[800],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 80),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, color: Colors.blue)
                              ],
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.blue[800],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
            RichText(
              text: const TextSpan(
                  text: 'Now User? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: ' SignUp',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double a = 100;
    double b = 15;
    return Path()
      ..moveTo(0, b)
      ..lineTo(0, size.height - a - b)
      ..quadraticBezierTo(0, size.height - a, b, size.height - a + b * 0.4)
      ..lineTo(size.width - b, size.height - b * 0.4)
      ..quadraticBezierTo(size.width, size.height, size.width, size.height - b)
      ..lineTo(size.width, a + b)
      ..quadraticBezierTo(size.width, a, size.width - b, a - b * 0.4)
      ..lineTo(b, b * 0.4)
      ..quadraticBezierTo(0, 0, 0, b)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
