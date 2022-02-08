import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify your phone number',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        centerTitle: true,
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 53.44, bottom: 58),
              child: Center(
                child: Image.asset('assets/images/vn.png'),
              ),
            ),
            const Text(
              'Just one thing',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Enter OTP code and recent your password',
              style: TextStyle(fontSize: 14, color: Color(0xffB4B4B4)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 59,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  'Please enter the 4 digit code you recived by SMS',
                  style: TextStyle(fontSize: 14, color: Color(0xffB4B4B4)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 41.57, vertical: 34),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                pinTheme: PinTheme(
                    errorBorderColor: Colors.red,
                    activeColor: const Color(0xffF1F2F6),
                    activeFillColor: const Color(0xffF1F2F6),
                    inactiveColor: const Color(0xffF1F2F6),
                    inactiveFillColor: const Color(0xffF1F2F6),
                    selectedColor: const Color(0xffF1F2F6),
                    selectedFillColor: Colors.grey,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 63,
                    fieldWidth: 64),
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
