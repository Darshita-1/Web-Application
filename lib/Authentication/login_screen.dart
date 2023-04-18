import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(150, 20, 150, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      child: Image.asset("Images/icon-food.png")),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.07,
                height: MediaQuery.of(context).size.width * 0.025,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    email = value;
                  },
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 5,
                      fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1,
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 5,
                          fontWeight: FontWeight.w100),
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 12,
                      )),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                width: 70.0,
                height: 25.0,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    password = value;
                  },
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 5,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 5,
                        fontWeight: FontWeight.w100,
                      ),
                      icon: Icon(
                        Icons.key,
                        color: Colors.grey,
                        size: 12,
                      )),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
