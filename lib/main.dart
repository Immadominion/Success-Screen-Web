import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Success Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SuccessScreen(),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/success_image.png',
                    width: 56,
                    height: 56,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Payment Successful',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Rob",
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'You have successfully placed an order. Details of your order have been sent to your email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Rob",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 20, 42),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    child: const Text(
                      'Okay',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Rob",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
