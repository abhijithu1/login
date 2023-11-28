import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 12, 76, 126),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "App Da",
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 15, 83, 134),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Login Screen",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: controller1,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                labelText: "Username",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                fillColor: Colors.white),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controller2,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                fillColor: Colors.white),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller1.text == controller2.text
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Hi ${controller1.text} congratzz",
                          ),
                        ),
                      )
                    : ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Sorrry dude",
                          ),
                        ),
                      );
              },
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30,
                      ),
                    ),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 74, 161, 210),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
