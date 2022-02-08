import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:taxi_app/widgets/pass_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
            left: 32.52, right: 32.52, bottom: 30, top: 30),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 74.47,
            ),
            const Center(
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
            ),
            const Text(
              'Enter your creditional to continue!',
              style: TextStyle(color: Color(0xffB4B4B4)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.33),
              child: SizedBox(
                height: 135.2,
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xffC4C4C4)),
                  child: const Center(
                      child: Text(
                    'IMAGE',
                    style: TextStyle(fontSize: 26),
                  )),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 28),
            //   child: TextFormField(
            //     style: const TextStyle(fontSize: 19, color: Color(0xFF0D1F3C)),
            //     decoration: const InputDecoration(
            //       border: OutlineInputBorder(),
            //       errorText: 'Invalid phone number or password',
            //       suffixIcon: Icon(
            //         Icons.check_circle,
            //         color: Colors.green,
            //       ),
            //       hintStyle: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.w400,
            //         color: Colors.grey,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {},
                selectorTextStyle: const TextStyle(color: Colors.black),
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: const OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 28),
              child: PasswordFieldWidget(
                text: 'Password',
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39.53),
              child: SizedBox(
                height: 54.47,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFECC2A)),
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffFECC2A),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
