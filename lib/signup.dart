import 'package:flutter/material.dart';
import 'package:weatherapplication/main.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignUp();
}

class _SignUp extends State<Signup> {
  var fname = TextEditingController();
  var lname = TextEditingController();
  var phno = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  bool _obscure = true;
  bool _cnfobscure = true;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Column(
        children: [
          // Top Container with rounded edges
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(30)),
            child:  Container(
                height: screenHeight* 0.4,
                width: screenWidth,
                decoration: BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 2, color: Colors.black)),
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: Colors.cyan.shade200,
                ),
                child: const Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontFamily: "Custom",
                              fontSize: 45,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "hi, Please sign up to explore the best services we offer",
                          style: TextStyle(
                            fontFamily: "Sofadi",
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ),
          ),
          // Use SizedBox to ensure spacing between the two containers
          const SizedBox(
              height: 0), // Set height to 0 to avoid extra space if needed
          // Form Container
          Expanded(
            child: Container(
              width: screenWidth,
              color: Colors.white70,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  height: screenHeight * 0.7,
                  width: screenWidth * 0.8, // Adjusted width for better fit
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.white70, Colors.white38],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius:
                        BorderRadius.circular(15), // Optional: Rounded corners
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1.0,
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "First Name:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: fname,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                            ),
                            hintText: "Enter Name",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Last Name:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: lname,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Enter Name",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Phone Number:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: phno,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            hintText: "Enter Phone Number",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Email:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            hintText: "Enter Email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Password:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: pass,
                          obscureText: _obscure,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Enter Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                                icon: const Icon(Icons.remove_red_eye)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm Password:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        TextField(
                          controller: cpass,
                          obscureText: _cnfobscure,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: "Confirm Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _cnfobscure = !_cnfobscure;
                                  });
                                },
                                icon: const Icon(Icons.remove_red_eye)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 2.0,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyHomePage(title: "title")));
                                _showmessage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan.shade200,
                              ),
                              child: const Text("Save"),
                            ),
                          ),
                        )
                        ,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showmessage(BuildContext context) {
  final snackBar = SnackBar(
    content: Container(
      height: 15,
      child: Text(
        "Sign up successfull",
        style: TextStyle(fontSize: 11),
      ),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
