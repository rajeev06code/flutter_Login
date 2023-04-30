import "package:flutter/material.dart";

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
        primarySwatch: Colors.blue,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/images/Typing-bro.png",
              width: 250,
              // height: 350,
            ),
            const Text(
              "Hello, Developers",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            // const Text(
            //   "Welcome back you have been missed.",
            //   style: TextStyle(
            //       fontFamily: "poppins",
            //       fontSize: 18,
            //       color: Color.fromARGB(255, 107, 101, 101),
            //       fontWeight: FontWeight.bold),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: "poppins",
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontFamily: "poppins",
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 16,
                          color: Colors.grey[800]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),

                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width - 80,
                    // color: Colors.deepPurple,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  color: Colors.deepPurple,
                )),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Text("Or Continue With"),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.deepPurple,
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 238, 238),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/images/google.png"),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 238, 238),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/images/fb.png"),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 238, 238),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/images/apple.png"),
              )
            ])
          ]),
        ))));
  }
}
