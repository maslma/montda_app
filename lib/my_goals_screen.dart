import 'package:flutter/material.dart';

class MyGoalsScreen extends StatefulWidget {
  MyGoalsScreen({Key? key}) : super(key: key);

  @override
  State<MyGoalsScreen> createState() => _MyGoalsScreenState();
}

class _MyGoalsScreenState extends State<MyGoalsScreen> {
  bool isVisiblePassword = false;

  @override
  Widget build(BuildContext context) {
    print("build method was called");
    return Scaffold(
      backgroundColor: Color(0xFF2a3651),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset("assets/images/goal.png"),
            const Text(
              "My Goals",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                style: const TextStyle(color: Colors.white, fontSize: 18),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: const Text(
                      "Email",
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: "test@gmail.com",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                obscureText: isVisiblePassword,
                obscuringCharacter: "\$",
                style: const TextStyle(color: Colors.white, fontSize: 18),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          isVisiblePassword = !isVisiblePassword;
                          setState(() {

                          });
                        },
                        icon: Icon(isVisiblePassword
                            ? Icons.visibility
                            : Icons.visibility_off,color: Colors.white,)),
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: "enter your password",
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Text(
              "Forget Password?",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: const Color(0xFF98dfc0)),
                onPressed: () {},
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Color(0xFF2a3651)),
                )),
            SizedBox(
              height: 80,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Don't Have An Account?",
                  style: TextStyle(color: Colors.white70),
                )),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}