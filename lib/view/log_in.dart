import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:taxi_app/view/forgot_password.dart';
import 'package:taxi_app/view/profile_detail.dart';
import 'package:taxi_app/view/sign_up.dart';
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
      resizeToAvoidBottomInset: false,
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
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
            ),
            const Text(
              'Enter your creditional to continue!',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Color(0xffB4B4B4)),
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
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: IntlPhoneField(
                dropdownIcon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.black,
                ),
                flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 18),
                dropdownIconPosition: IconPosition.trailing,
                showDropdownIcon: true,
                showCountryFlag: true,
                disableLengthCheck: true,
                initialCountryCode: 'US',
                invalidNumberMessage: 'Invalid phone number or password',
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: Color(0xff49E46B),
                  ),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
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
                  onPressed: () {
                    Get.to(() => const ForgotPassword());
                  },
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )),
            ),
            Container(
              height: 30.5,
              width: 1,
              decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39.53),
              child: SizedBox(
                height: 54.47,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: const Color(0xffFECC2A)),
                    onPressed: () {
                      Get.to(() => const ProfileDetail());
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xff1B1C1C),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
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
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const SigUpPage());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffFECC2A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
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
