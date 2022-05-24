import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lesson_1_connexion/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/connexion.png',
                              width: 120,
                              height: 120,
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      fontSize: 26.0, color: Colors.white),
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white54),
                                      ),
                                      hintText: 'Enter email',
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      focusColor: Colors.white,
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white54)),
                                      hintText: 'Password',
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      focusColor: Colors.white,
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _checked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _checked = value!;
                                        });
                                      },
                                      checkColor: Colors.grey,
                                      // color of tick Mark
                                      activeColor:
                                          const Color.fromRGBO(255, 119, 78, 1),
                                    ),
                                    const Text(
                                      "Remember Password",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(
                                    'GET STARTED',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 58, 86, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
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
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MaterialButton(
                                      shape: const CircleBorder(),
                                      color: Colors.white,
                                      padding: const EdgeInsets.all(20),
                                      onPressed: () {},
                                      child: const Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 29,
                                        color: Colors.red,
                                      ),
                                    ),
                                    MaterialButton(
                                      shape: const CircleBorder(),
                                      color: Colors.white,
                                      padding: const EdgeInsets.all(20),
                                      onPressed: () {},
                                      child: const Icon(
                                        FontAwesomeIcons.twitter,
                                        size: 29,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'FORGOT PASSWORD?',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(212, 32, 83, 1),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("DON'T HAVE ACCOUNT?",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 143, 80, 1))),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()),
                                  );
                                },
                                child: const Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white),
                                ),
                              ),
                            ])),
                  ],
                ),
              ),
            ),
          ],
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
