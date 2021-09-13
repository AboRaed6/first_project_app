import 'package:adaptive_responsive_app/adaptive_indecator.dart';
import 'package:adaptive_responsive_app/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login with your account',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          color: Colors.teal,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 45,
                          color: Colors.blue,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Resgister',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(child: AdaptiveIndicator(os: getOs())),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
