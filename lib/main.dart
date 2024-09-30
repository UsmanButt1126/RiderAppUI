import 'package:flutter/material.dart';
import 'package:weatherapplication/home.dart';
import 'package:weatherapplication/signup.dart';
import 'package:weatherapplication/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor: Colors.cyan.shade200,
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var email = TextEditingController();
  var password = TextEditingController();
  Color _button = Colors.white;
  Color _btn2 = Colors.white;
  bool _obscure = true;

  void _changeColor() {
    setState(() {
      _button = Colors.white60;
    });
  }

  void _changeColor2() {
    setState(() {
      _btn2 = Colors.white60;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: null,
      body: Center(

          child: Container(
            // Add constraints to handle different screen sizes
            constraints: BoxConstraints(maxWidth: 600), // for web, it limits the width
            height: height * 0.84,
            width: width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  colors: [Colors.white, Colors.white70],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 1.0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                height: height * 0.85,
                width: 380,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.03), // dynamic spacing
                      const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            fontFamily: 'Custom',
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          "Email :",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: width * 0.8,
                          child: TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                  fontFamily: "Sofadi",
                                  fontWeight: FontWeight.w700
                              ),
                              prefixIcon: const Icon(Icons.email),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2, color: Colors.black45,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 1, color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02), // dynamic spacing
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          "Password: ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: width * 0.8,
                          child: TextField(
                            controller: password,
                            obscureText: _obscure,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(
                                fontFamily: "Sofadi",
                                fontWeight: FontWeight.w700,
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                                icon: const Icon(Icons.remove_red_eye_outlined),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2, color: Colors.black45,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 1, color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02), // dynamic spacing
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: width * 0.8,
                            child: ElevatedButton(
                              onPressed: () {
                                _changeColor2();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _btn2,
                                elevation: 3.0,
                                fixedSize: Size(
                                  width * 0.4, height * 0.06, // Responsive button size
                                ),
                              ),
                              child: const Text("Login"),
                            ),
                          ),
                          SizedBox(height: height * 0.01), // dynamic spacing
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("New to our platform? "),
                              InkWell(
                                child: const Text(
                                  "Create an account",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup(),
                                    ),
                                  );
                                  _changeColor();
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02), // dynamic spacing
                          Row(
                            children: const <Widget>[
                              Expanded(child: Divider(color: Colors.black)),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "OR",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(child: Divider(color: Colors.black)),
                            ],
                          ),
                          SizedBox(height: height * 0.02), // dynamic spacing
                          Container(
                            width: width * 0.7,
                            child: ElevatedButton.icon(
                              icon: Container(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                    "assets/images/logoGoogle.png",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.cover
                                ),
                              ),
                              label: const Text("Continue with Google"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: height * 0.02), // dynamic spacing
                          Container(
                            width: width * 0.7,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text("Continue with Facebook"),
                              icon: Container(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  "assets/images/Facebook_Logo_2023.png",
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
