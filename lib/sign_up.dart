import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lesson_1_connexion/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  final Gradient _gradientText = const LinearGradient(
    colors: [Color.fromRGBO(255, 112, 67, 1), Color.fromRGBO(250, 42, 101, 1)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.heartCrack,
                  color: Color.fromRGBO(245, 45, 111, 1.0),
                  size: 80.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'CONN',
                        style: TextStyle(
                          color: Color.fromRGBO(247, 32, 108, 10),
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'EXION',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  "Find and Meet people around \nyou to find LOVE",
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 100.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => {},
                  icon: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Color.fromRGBO(255, 173, 173, 1.0),
                                width: 2))),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Color.fromRGBO(255, 58, 86, 1),
                        size: 26,
                      ),
                    ),
                  ),
                  label: ShaderMask(
                    shaderCallback: (size) => _gradientText.createShader(
                      Rect.fromLTWH(0, 0, size.width, size.height),
                    ),
                    blendMode: BlendMode.modulate,
                    child: const Text(
                      'Sign in with Facebook',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 58, 86, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: const StadiumBorder(),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0)),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => {},
                  icon: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Color.fromRGBO(255, 173, 173, 1.0),
                                width: 2))),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromRGBO(255, 58, 86, 1),
                      ),
                    ),
                  ),
                  label: ShaderMask(
                    shaderCallback: (size) => _gradientText.createShader(
                      Rect.fromLTWH(0, 0, size.width, size.height),
                    ),
                    blendMode: BlendMode.modulate,
                    child: const Text(
                      'Sign in with Twitter',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 58, 86, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: const StadiumBorder(),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 25.0)),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 58, 86, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text(
                    "ALREADY REGISTERED? SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(255, 112, 67, 1),
              Color.fromRGBO(250, 42, 101, 1)
            ])),
      ),
    );
  }
}
