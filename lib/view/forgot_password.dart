import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 15,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55.44, bottom: 76),
              child: Center(child: Image.asset('assets/images/fgp.png')),
            ),
            const Text(
              'Enter your Phone number',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text(
                  'Please enter your registreted phone number to reset your password',
                  style: TextStyle(fontSize: 14, color: Color(0xffB4B4B4)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 28, left: 33.43, right: 32.57),
              child: IntlPhoneField(
                dropdownIconPosition: IconPosition.trailing,
                dropdownIcon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.black,
                ),
                initialCountryCode: 'US',
                invalidNumberMessage: 'Invalid phone number or password',
                flagsButtonPadding: const EdgeInsets.all(10),
                dropdownTextStyle: const TextStyle(color: Colors.white),
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
                  // ignore: avoid_print
                  print(phone.completeNumber);
                },
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.57, vertical: 99.06),
                  child: SizedBox(
                    height: 54.47,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFECC2A)),
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
